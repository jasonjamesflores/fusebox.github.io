  <div id="body_content">
 <div class="container">
  <h2>Edit Teacher</h2>

 <cfoutput query="get_teacher_by_id">
  <form action="index.cfm?action=app_teacher.update&id=#get_teacher_by_id.teacher_id#" role="form" method="POST">
    <div class="form-group">
      <label for="firstname">Firstname</label>
      <input name="FirstName" type="text" class="form-control" value="#get_teacher_by_id.teacher_fname#">
    </div>
    <div class="form-group">
      <label for="lastname">Lastname</label>
      <input name="LastName" type="text" class="form-control" value="#get_teacher_by_id.teacher_lname#">
    </div>
    <div class="form-group">
      <label for="age">AGE</label>
      <input name="Age" type="text" class="form-control" value="#get_teacher_by_id.age#">
    </div>
    <div class="form-group">
      <label for="courseGraduated">Course Graduated</label>
      <input name="CourseGraduated" type="text" class="form-control" value="#get_teacher_by_id.course_graduated#">
    </div>
  <button type="submit" class="btn btn-primary" name="submit_update">Update</button>

  </form>
</cfoutput> 

  </div>
</div>

