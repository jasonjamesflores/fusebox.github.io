<cfset update_subjects="#application.subjectservices.updateSubject(id,form.SubjectDescription)#" />

   <cfoutput>
      <script type="text/javascript">
                alert("Subject #form.SubjectDescription# was updated to the database!");
                window.location.href="index.cfm?action=app_subj.main";
      </script>
    </cfoutput>  
    

	

