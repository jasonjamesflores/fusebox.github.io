<cfcomponent displayname="Students" hint="ColdFusion Component for Students">

<cffunction name="Init" access="public" returntype="Students" output="false" displayname="" hint="">
        <cfreturn this />
  </cffunction>
  
  <cffunction name="ListAllStudents" returntype="query">
  	<cfstoredproc procedure="sp_student_list" datasource="cfEnrollment">
			<cfprocresult name="studentList" />
	</cfstoredproc>
  <cfreturn studentList />
 </cffunction>

<cffunction name="getStudentID" returntype="query">
	<cfargument name="student_id" type="numeric" required="yes" />
	<cfstoredproc procedure="sp_student_id" datasource="cfEnrollment">
	<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@student_id" null="no" value="#arguments.student_id#" />
				<cfprocresult name="GetStudent" />
	</cfstoredproc>
	<cfreturn GetStudent />	
</cffunction>

<cffunction name="addStudent">
		<cfargument name="studentFname" type="string" required="yes" />
		<cfargument name="studentLname" type="string" required="yes" />
		<cfargument name="studentCourseID" type="numeric" required="yes" />
		<cfstoredproc procedure="sp_student_insert" datasource="cfEnrollment">
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@studentFname" null="no" value="#arguments.studentFname#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@studentLname" null="no" value="#arguments.studentLname#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@studentCourse" null="no" value="#arguments.studentCourseID#" />
		</cfstoredproc>
</cffunction>

<cffunction name="updateStudent">
		<cfargument name="studentID" type="numeric" required="yes" />
		<cfargument name="studentFname" type="string" required="yes" />
		<cfargument name="studentLname" type="string" required="yes" />
		<cfargument name="studentCourseID" type="numeric" required="yes" />
		<cfstoredproc procedure="sp_student_update" datasource="cfEnrollment">
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@subjectId" null="no" value="#id#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@studentFname" null="no" value="#arguments.studentFname#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@studentLname" null="no" value="#arguments.studentLname#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@studentCourse" null="no" value="#arguments.studentCourseID#" />
	</cfstoredproc>
</cffunction>

<cffunction name="deleteStudent">		
			<cfargument name="studentID" type="numeric" required="yes" />
			<cfstoredproc procedure="sp_delete_student_id" datasource="cfEnrollment">		
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@subj_id" null="no" value="#id#" />
			</cfstoredproc>
</cffunction>

<cffunction name="ListAllCourse" returntype="query">
  	<cfstoredproc procedure="sp_course_list" datasource="cfEnrollment">
			<cfprocresult name="courseList" />
	</cfstoredproc>
  <cfreturn courseList />
 </cffunction>

 <cffunction name="getCourseID" returntype="query">
	<cfargument name="courseID" type="numeric" required="yes" />
	<cfstoredproc procedure="sp_course_id" datasource="cfEnrollment">
	<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@course_id" null="no" value="#arguments.courseID#" />
				<cfprocresult name="getCourse" />
	</cfstoredproc>
	<cfreturn getCourse />	
</cffunction>

</cfcomponent>