<cfset update_students="#application.studentservices.updateStudent(id,form.FirstName,form.LastName,form.CourseID)#" />
<cfoutput>
       <script type="text/javascript">
                alert("Student Name #form.FirstName# #form.LastName# was updated to the database!");
                window.location.href="index.cfm?action=app_students.main";
        </script>
</cfoutput>
