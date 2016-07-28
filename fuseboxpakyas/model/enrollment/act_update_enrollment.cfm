<cfset update_enrollment="#application.enrollmentservices.updateEnrollment(id,form.StudentID,form.SubjectID,form.TeacherID)#" />
 <cfoutput>
        <script type="text/javascript">
                alert("Student ID #form.StudentID# was now updated!");
                window.location.href="index.cfm?action=app_enrollment.main";
      </script>
 </cfoutput>  
    