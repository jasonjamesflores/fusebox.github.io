<div id="body_content">
  <div class="container">
  <h2>Edit Course</h2>
<!--- <cfinvoke component="Course" method="getCourseID" returnVariable="editCourse">
      <cfinvokeargument name="courseID" value="#url.id#" />
</cfinvoke> --->
   <cfoutput query="get_course_by_id"> 
  <form action="index.cfm?action=app_course.update&id=#get_course_by_id.course_id#" role="form" method="POST">

    <div class="form-group">
      <label for="courseid">Course ID</label>
      <input name="CourseId" type="text" class="form-control" value="#get_course_by_id.course_id#" disabled>
    </div>
    <div class="form-group">
      <label for="coursedescription">Course Description</label>
      <input name="CourseDescription" type="text" class="form-control" value="#get_course_by_id.course_desc#">
    </div>
    </cfoutput> 
  <button type="submit" class="btn btn-primary" name="submit_update">Update</button>
  <button class="btn btn-default"><a href="course_list.cfm">Back</a></button>
  </form>
    
  </div>

</div>

