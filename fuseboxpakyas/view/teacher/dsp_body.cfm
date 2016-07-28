<div id="body_content">
  <div class="container-fluid" style="background-color:#337ab7;color:#fff;height:60px;">
    <ul class="nav nav-pills nav-stacked">
    <h3>Teacher Form</h3>
    </ul>
  </div>
<br>

<div class="container">
   <div class="row">
    <nav class="col-sm-3">
      <ul class="nav nav-pills nav-stacked">
        <li><a href="<cfoutput>#mySelf##xfa.enrollment_main#</cfoutput>">Enrollment</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.students_main#</cfoutput>">Student</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.course_main#</cfoutput>">Course</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.subjects_main#</cfoutput>">Subject</a></li>
        <li class="active"><a href="<cfoutput>#mySelf##xfa.teacher_main#</cfoutput>">Teacher</a></li>
      </ul>
    </nav>
    <div class="col-sm-9">
  <p><a href="" data-toggle="modal" data-target="#myModal">Add Teacher</a></p>
  <table id="example" class="table table-bordered">
    <thead>
      <tr>
        <th align="center">Firstname</th>
        <th align="center">Lastname</th>
        <th align="center">Age</th>
        <th align="center">Course Graduated</th>
        <th align="center">Action</th>
      </tr>
    </thead>
    <tbody>

      <cfoutput query="get_teacher_list">  
            <tr>
                <td>#get_teacher_list.teacher_fname#</td>
                <td>#get_teacher_list.teacher_lname#</td>
                <td>#get_teacher_list.age#</td>
                <td>#get_teacher_list.course_graduated#</td>
                <td>
                    <a href="index.cfm?action=app_teacher.edit_layout&id=#get_teacher_list.teacher_id#">
                        Edit
                    </a> | 
                      <a rel="#get_teacher_list.teacher_id#" href="index.cfm?action=app_teacher.delete&id=#get_teacher_list.teacher_id#"
                       onclick="javascript:return confirm('Are you sure to delete the Teacher #get_teacher_list.teacher_fname#?');
                       "
                       >
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

    <form action="<cfoutput>#mySelf##xfa.teacher_save#</cfoutput>" role="form" method="POST">
    <div class="form-group">
      <label for="teacherfname">Teacher Firstname</label>
      <input name="TeacherFname" type="text" class="form-control" placeholder="Enter Firstname">
    </div>
    <div class="form-group">
      <label for="teacherlname">Teacher Lastname</label>
      <input name="TeacherLname" type="text" class="form-control" placeholder="Enter Lastname">
    </div>
    <div class="form-group">
      <label for="teacherage">Teacher Age</label>
      <input name="TeacherAge" type="text" class="form-control" placeholder="Enter Age">
    </div>
    <div class="form-group">
      <label for="teachercoursegraduated">Course Graduated</label>
      <input name="TecherCourseGraduated" type="text" class="form-control" placeholder="Enter Course Graduated">
    </div>
    <br/>
  <button type="submit" class="btn btn-primary" name="submit_add">Add</button>
  <cfif IsDefined("submit_add")> 
  <cfoutput>
          <script type="text/javascript">
                alert("Teacher #form.TeacherFname# #form.TeacherLname# was added to the database!");
                window.location.href="index.cfm?action=app_teacher.main";
      </script>
    </cfoutput>    
  </cfif>

  </form>
        </div>
      
      </div>
      
    </div>
  </div>

</div>

