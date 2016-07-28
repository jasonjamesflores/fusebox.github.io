<cfcomponent displayname="Subject" hint="ColdFusion Component for Subjects">

<cffunction name="Init" access="public" returntype="Subject" output="false" displayname="" hint="">
        <cfreturn this />
  </cffunction>

  <cffunction name="ListAllSubject" returntype="query">
  	<cfstoredproc procedure="sp_subject_list" datasource="cfEnrollment">
			<cfprocresult name="subjectList" />
	</cfstoredproc>
  <cfreturn subjectList />
 </cffunction>

<cffunction name="getSubjectID" returntype="query">
	<cfargument name="subject_id" type="numeric" required="yes" />
	<cfstoredproc procedure="sp_subject_id" datasource="cfEnrollment">
	<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@subjectId" null="no" value="#arguments.subject_id#" />
				<cfprocresult name="GetSubject" />
	</cfstoredproc>
	<cfreturn GetSubject />	
</cffunction>

<cffunction name="addSubject">
	<cfargument name="SubjectDescription" type="string" required="yes">  
	 <cfstoredproc procedure="sp_insert_subject" datasource="cfEnrollment"> 
	 <cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@subjectDescription" null="no" value="#arguments.SubjectDescription#" /> 

</cfstoredproc>

</cffunction>

<cffunction name="updateSubject">
		<cfargument name="subjectId" type="numeric" required="yes" />
		<cfargument name="subjectDescription" type="string" required="yes" />
		<cfstoredproc procedure="sp_update_subject" datasource="cfEnrollment">
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@subjectId" null="no" value="#id#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@subjectDescription" null="no" value="#arguments.subjectDescription#" />
		</cfstoredproc>
</cffunction>

<cffunction name="deleteSubject">		
			<cfargument name="subjectId" type="numeric" required="yes" />
			<cfstoredproc procedure="sp_delete_subject_id" datasource="cfEnrollment">		
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@subjectId" null="no" value="#id#" />
			</cfstoredproc>
</cffunction>

</cfcomponent>