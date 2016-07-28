<div id="body_content">
 <div class="container-fluid" style="background-color:#337ab7;color:#fff;height:60px;">
    <ul class="nav nav-pills nav-stacked">
    <h3>Students Form</h3>
    </ul>
  </div>
<br>

<div class="container">
  <div class="row">
    <nav class="col-sm-3">
      <ul class="nav nav-pills nav-stacked">
        <li><a href="<cfoutput>#mySelf##xfa.enrollment_main#</cfoutput>">Enrollment</a></li>
        <li class="active"><a href="<cfoutput>#mySelf##xfa.students_main#</cfoutput>">Student</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.course_main#</cfoutput>">Course</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.subjects_main#</cfoutput>">Subject</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.teacher_main#</cfoutput>">Teacher</a></li>
      </ul>
    </nav>
    <div class="col-sm-9">
  <p><a href="" data-toggle="modal" data-target="#myModal">Add Students</a></p>
  <table id="example" class="table table-bordered">
    <thead>
      <tr>
        <th align="center">Student Firstname</th>
        <th align="center">Student Lastname</th>
        <th align="center">Course</th>
        <th align="center">Action</th>
      </tr>
    </thead>
    <tbody>
    <cfoutput query="get_students_list"> 
            <tr>
                <td>#get_students_list.student_fname#</td>
                <td>#get_students_list.student_lname#</td>
                <td>#get_students_list.course_desc#</td>
                <td>
                  <a href="student_full_info.cfm?id=#get_students_list.id#">
                        Full View
                    </a> |
                    <a href="index.cfm?action=app_students.edit_layout&id=#get_students_list.id#">
                        Edit
                    </a> | 
                   <a href="index.cfm?action=app_students.delete&id=#get_students_list.id#"
                       onclick="javascript:return confirm('Are you sure to delete the student name #get_students_list.student_fname# #get_students_list.student_lname#?');">
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

    <form action="<cfoutput>#mySelf##xfa.students_save#</cfoutput>" role="form" method="POST">
          <div class="form-group">
              <label for="Firstname">First Name</label>
                 <input name="AddFirstName" type="text" class="form-control" placeholder="Enter First Name">
          </div>
          <div class="form-group">
               <label for="Lastname">Last Name</label>
                  <input name="AddLastName" type="text" class="form-control" placeholder="Enter Last Name">
          </div>
          <div class="form-group">
  <label for="sel1">Select Course</label>
  <select class="form-control" name="CourseID">
       <cfoutput query="get_course_list"> 
        <option name="courseID" value="#get_course_list.course_id#">#get_course_list.course_desc#</option>
       </cfoutput>    
  </select>
</div><br/>
  <button type="submit" class="btn btn-primary" name="submit_add">Add</button>
  <cfif IsDefined("submit_add")>
  <cfoutput>
          <script type="text/javascript">
                alert("Student Name #form.AddFirstName# #form.AddLastName# was added to the database!");
                window.location.href="index.cfm?action=app_students.main";
      </script>
    </cfoutput>      
  </cfif>

</form>
        </div>
      
      </div>
      
    </div>
  </div>
</div>

