  <div id="body_content">
 <div class="container">
  <h2>Update Enrollee</h2>

<cfoutput query="get_enrollment_by_id">  
  <form action="index.cfm?action=app_enrollment.update&id=#get_enrollment_by_id.enrollment_id#" role="form" method="POST">
    <div class="form-group">
      <label for="studentid">ID of Student</label>
      <input name="StudentID" type="text" class="form-control" placeholder="Enter Student ID" value="#get_enrollment_by_id.id#">
    </div>
</cfoutput> 
    <div class="form-group">
  <label for="sel1">Select Subject</label>
  <select class="form-control" name="SubjectID">
  <cfoutput query="get_subject_list">
                                <option value="#get_subject_list.subject_id#"
                                        <cfif get_subject_list.subject_id is get_enrollment_by_id.subject_id>
                                            selected="selected"
                                        </cfif>
                                    >
                                    #get_subject_list.subject_description#
                                </option>
       </cfoutput> 
  </select>
</div>
  <div class="form-group">
  <label for="sel2">Select Teacher</label>
  <select class="form-control" name="TeacherID">
    <cfoutput query="get_teacher_list_full"> 
    <option value="#get_teacher_list_full.teacher_id#"
                                        <cfif get_teacher_list_full.teacher_id is get_enrollment_by_id.teacher_id>
                                            selected="selected"
                                        </cfif>
                                    >
                                    #get_teacher_list_full.TeacherFullName#
                                </option>
      </cfoutput> 
  </select>

</div><br/>
  <button type="submit" class="btn btn-primary" name="submit_update">Update</button>
  <button class="btn btn-default"><a href="enrollee_list.cfm">Back</a></button>
  </form>

  </div>

</div>

