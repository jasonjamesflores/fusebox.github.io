<cfset update_course="#application.courseservices.updateCourse(id,form.CourseDescription)#" />

 <cfoutput>
      <script type="text/javascript">
                alert("Subject #form.CourseDescription# was updated to the database!");
                window.location.href="index.cfm?action=app_course.main";
      </script>
 </cfoutput>  
    

	

