<cfset update_teacher="#application.teacherservices.UpdateTeacher(id,form.FirstName,form.LastName,form.Age,form.CourseGraduated)#" />

   <cfoutput>
       <script type="text/javascript">
                alert("Teacher Name #form.FirstName# #form.LastName# was updated to the database!");
                window.location.href="index.cfm?action=app_teacher.main";
        </script>
    </cfoutput>  
    