<div id="body_content">
<div class="container">
  <h2>Edit Students</h2>
<cfoutput query="get_students_by_id">   
   <form action="index.cfm?action=app_students.update&id=#get_students_by_id.id#" role="form" method="POST">
    <div class="form-group">
       
      <label for="Firstname">First Name</label>
      <input name="FirstName" type="text" class="form-control" value="#get_students_by_id.student_fname#">
    </div>
    <div class="form-group">
      <label for="Lastname">Last Name</label>
      <input name="LastName" type="text" class="form-control" value="#get_students_by_id.student_lname#">
    </div>
 </cfoutput> 
        <div class="form-group">
            <label for="sel1">Select Course</label>
            <select class="form-control" name="CourseID">
               <cfoutput query="get_course_list">
                                <option value="#get_course_list.course_id#" 
                                  <cfif get_course_list.course_id is get_students_by_id.course_id>
                                            selected="selected"
                                        </cfif>
                                    > 
                                    #get_course_list.course_desc#
                                </option>
                </cfoutput> 
          </select>
        </div><br/>             
                           
  <button type="submit" class="btn btn-primary" name="submit_update">Submit</button>
  <button class="btn btn-default"><a href="student_list.cfm">Back</a></button>
</form>

</div>

</div>

