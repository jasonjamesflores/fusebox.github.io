  <div id="body_content">
   <div class="container">
  <h2>Edit Subject</h2>
<cfoutput query="get_subjects_by_id">
  <form action="index.cfm?action=app_subj.update&id=#get_subjects_by_id.subject_id#" role="form" method="POST">

    <div class="form-group">
      <label for="subjectid">Subject ID</label>
      <input name="SubjectId" type="text" class="form-control" value="#get_subjects_by_id.subject_id#" disabled>     
    </div>
    <div class="form-group">
      <label for="subjectdescription">Subject Description</label>
      <input name="SubjectDescription" type="text" class="form-control" value="#get_subjects_by_id.subject_description#">
    </div>
 </cfoutput> 
  <button type="submit" class="btn btn-primary" name="submit_update">Update</button>
  <button class="btn btn-default"><a href="subject_list.cfm">Back</a></button>
  </form>
</div>

</div>

