<div id="body_content">
  <div class="container-fluid" style="background-color:#337ab7;color:#fff;height:60px;">
    <ul class="nav nav-pills nav-stacked">
    <h3>Enrollment Form</h3>
    </ul>
  </div>
<br>

<div class="container">
  <div class="row">
    <nav class="col-sm-3">
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="<cfoutput>#mySelf##xfa.enrollment_main#</cfoutput>">Enrollment</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.students_main#</cfoutput>">Student</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.course_main#</cfoutput>">Course</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.subjects_main#</cfoutput>">Subject</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.teacher_main#</cfoutput>">Teacher</a></li>
      </ul>
    </nav>
    <div class="col-sm-9">
  <p><a href="" data-toggle="modal" data-target="#myModal">Add Enrollee</a></p>
  <table class="table table-bordered" id="example">
    <thead>
      <tr>
        <th align="center">Enroll ID</th>
        <th align="center">Student ID</th>
        <th align="center">Student Name</th>
        <th align="center">Subject</th>
        <th align="center">Teacher</th>
        <th align="center">Action</th>
      </tr>
    </thead>
    <tbody>
    <cfoutput query="get_enrollment_list">
            <tr>
                <td>#get_enrollment_list.enrollment_id#</td>
                <td>#get_enrollment_list.id#</td>
                <td>#get_enrollment_list.StudentFullName#</td>
                <td>#get_enrollment_list.subject_description#</td>
                <td>#get_enrollment_list.TeacherFullName#</td>
                <td>
                    <a href="index.cfm?action=app_enrollment.edit_layout&id=#get_enrollment_list.enrollment_id#">
                        Edit
                    </a> | 
                   <a href="index.cfm?action=app_enrollment.delete&id=#get_enrollment_list.enrollment_id#"
                       onclick="javascript:return confirm('Are you sure to delete enrollment id #get_enrollment_list.enrollment_id#?');">
                        Delete
                    </a>
                </td>
            </tr>
    </cfoutput>
    </tbody>
  </table>
    </div>
  </div>
</div>

<!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Students</h4>
        </div>
          <div class="modal-body">

  <form action="<cfoutput>#mySelf##xfa.enrollment_save#</cfoutput>" role="form" method="POST">
    <div class="form-group">
      <label for="studentid">ID of Student</label>
      <input name="StudentID" type="text" class="form-control" placeholder="Enter Student ID">
    </div>
    <div class="form-group">
  <label for="sel1">Select Subject</label>
  <select class="form-control" name="SubjectID">
    <cfoutput query="get_subject_list">
        <option name="SubjectID" value="#get_subject_list.subject_id#">#get_subject_list.subject_description#</option>
    </cfoutput>
  </select>
</div>
       <div class="form-group">
  <label for="sel2">Select Teacher</label>
  <select class="form-control" name="TeacherID">
    <cfoutput query="get_teacher_list_full">
        <option name="TeacherID" value="#get_teacher_list_full.teacher_id#">#get_teacher_list_full.TeacherFullName#</option>
    </cfoutput>
  </select>
</div><br/>
  <button type="submit" class="btn btn-primary" name="submit_add">Add</button>
  <button class="btn btn-default"><a href="enrollee_list.cfm">Back</a></button>
  <cfif IsDefined("submit_add")>
    <cfoutput>
      <script type="text/javascript">
                alert("Student ID #form.StudentID# was enrolled in the system!");
                window.location.href="index.cfm?action=app_enrollment.main";
      </script>
    </cfoutput>         
  </cfif>
  </form>
        </div>
      
      </div>
      
    </div>
  </div>

</div>

