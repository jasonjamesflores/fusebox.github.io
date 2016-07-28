<div id="body_content">
  <div class="container-fluid" style="background-color:#337ab7;color:#fff;height:60px;">
    <ul class="nav nav-pills nav-stacked">
    <h3>Course Form</h3>
    </ul>
  </div>
<br>

<div class="container">
  <div class="row">
   <nav class="col-sm-3">
      <ul class="nav nav-pills nav-stacked">
        <li><a href="<cfoutput>#mySelf##xfa.enrollment_main#</cfoutput>">Enrollment</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.students_main#</cfoutput>">Student</a></li>
        <li class="active"><a href="<cfoutput>#mySelf##xfa.course_main#</cfoutput>">Course</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.subjects_main#</cfoutput>">Subject</a></li>
        <li><a href="<cfoutput>#mySelf##xfa.teacher_main#</cfoutput>">Teacher</a></li>
      </ul>
    </nav>
    <div class="col-sm-9">
  <p><a href="" data-toggle="modal" data-target="#myModal">Add Course</a></p>
  <table id="example" class="table table-bordered">
    <thead>
      <tr>
        <th align="center">Course ID</th>
        <th align="center">Course Description</th>
        <th align="center">Action</th>
      </tr>
    </thead>
    <tbody>
    <cfoutput query="get_course_list">
            <tr>
                <td>#get_course_list.course_id#</td>
                <td>#get_course_list.course_desc#</td>
                <td>
                    <a href="index.cfm?action=app_course.edit_layout&id=#get_course_list.course_id#">
                        Edit
                    </a> | 
                   <a rel="#get_course_list.course_id#" href="index.cfm?action=app_course.delete&id=#get_course_list.course_id#"
                       onclick="javascript:return confirm('Are you sure to delete the course name #get_course_list.course_desc#?');">
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
          <h4 class="modal-title">Add Course</h4>
        </div>
          <div class="modal-body">

    <form action="<cfoutput>#mySelf##xfa.course_save#</cfoutput>" role="form" method="POST">
      <div class="form-group">
      <label for="coursedescription">Course Description</label>
      <input name="CourseDescription" type="text" class="form-control" placeholder="Enter Course Description">
    </div>
    <br/>
  <button type="submit" class="btn btn-primary" name="submit_add">Add</button>
 <cfif IsDefined("submit_add")>
   <cfoutput>
      <script type="text/javascript">
                alert("Subject #form.CourseDescription# was added to the database!");
                window.location.href="index.cfm?action=app_course.main";
      </script>
    </cfoutput>          
  </cfif>
</form>
        </div>
      
      </div>
      
    </div>
  </div>
</div>

