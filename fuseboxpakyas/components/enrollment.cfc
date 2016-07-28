<cfcomponent displayname="Enrollment" hint="ColdFusion Component for Enrolling Students">

<cffunction name="Init" access="public" returntype="Enrollment" output="false" displayname="" hint="">
        <cfreturn this />
  </cffunction>
  
<cffunction name="ListAllEnrollee" returntype="query">
  	<cfstoredproc procedure="sp_enrollment_list" datasource="cfEnrollment">
			<cfprocresult name="enrollmenttList" />
	</cfstoredproc>
  <cfreturn enrollmenttList />
 </cffunction>

<cffunction name="getEnrollmenttID" returntype="query">
	<cfargument name="enrollment_id" type="numeric" required="yes" />
	<cfstoredproc procedure="sp_enrollment_id" datasource="cfEnrollment">
	<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@enrollment_id" null="no" value="#arguments.enrollment_id#" />
				<cfprocresult name="GetEnrollmentID" />
	</cfstoredproc>
	<cfreturn GetEnrollmentID />	
</cffunction>

<cffunction name="addEnrollment">
		<cfargument name="studentId" type="numeric" required="yes" />
		<cfargument name="subjectId" type="numeric" required="yes" />
		<cfargument name="teacherId" type="numeric" required="yes" />
		<cfstoredproc procedure="sp_insert_enrollee" datasource="cfEnrollment">
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@studentId" null="no" value="#arguments.studentId#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@subjectId" null="no" value="#arguments.subjectId#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@teacherID" null="no" value="#arguments.teacherId#" />
		</cfstoredproc>
</cffunction>

<cffunction name="updateEnrollment">
		<cfargument name="enrollmentID" type="numeric" required="yes" />
		<cfargument name="studentId" type="numeric" required="yes" />
		<cfargument name="subjectId" type="numeric" required="yes" />
		<cfargument name="teacherId" type="numeric" required="yes" />
		<cfstoredproc procedure="sp_update_enrollment" datasource="cfEnrollment">
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@enrollmentID" null="no" value="#id#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@studentId" null="no" value="#arguments.studentId#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@subjectId" null="no" value="#arguments.subjectId#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@teacherID" null="no" value="#arguments.teacherId#" />
	</cfstoredproc>
</cffunction>

<cffunction name="deleteEnrollment">		
			<cfargument name="enrollmentID" type="numeric" required="yes" />
			<cfstoredproc procedure="sp_delete_enrollment_id" datasource="cfEnrollment">		
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@enrollmentID" null="no" value="#id#" />
			</cfstoredproc>
</cffunction>


<cffunction name="ListAllSubject" returntype="query">
  	<cfstoredproc procedure="sp_subject_list" datasource="cfEnrollment">
			<cfprocresult name="subjectList" />
	</cfstoredproc>
  <cfreturn subjectList />
</cffunction>

<cffunction name="ListAllTeacher" returntype="query">
  	<cfstoredproc procedure="sp_teacher_list" datasource="cfEnrollment">
			<cfprocresult name="teacherList" />
	</cfstoredproc>
  <cfreturn teacherList />
</cffunction>


<cffunction name="getTeacherID" returntype="query">
	<cfargument name="teacher_id" type="numeric" required="yes" />
  	<cfstoredproc procedure="sp_teacher_id" datasource="cfEnrollment">
	<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@teacherId" null="no" value="#arguments.teacher_id#" />
				<cfprocresult name="GetTeacherID" />
	</cfstoredproc>
	<cfreturn GetTeacherID />	
</cffunction>

<cffunction name="getSubjectID" returntype="query">
	<cfargument name="subject_id" type="numeric" required="yes" />
	<cfstoredproc procedure="sp_subject_id" datasource="cfEnrollment">
	<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@subjectId" null="no" value="#arguments.subject_id#" />
				<cfprocresult name="GetSubject" />
	</cfstoredproc>
	<cfreturn GetSubject />	
</cffunction>

</cfcomponent>