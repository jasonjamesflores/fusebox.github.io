<cfcomponent displayname="Teachers" hint="ColdFusion Component for Teachers">

<cffunction name="Init" access="public" returntype="Teachers" output="false" displayname="" hint="">
        <cfreturn this />
  </cffunction>
  
  <cffunction name="ListAllTeachers" returntype="query">
  	<cfstoredproc procedure="sp_teacher_list_form" datasource="cfEnrollment">
			<cfprocresult name="TeacherList" />
	</cfstoredproc>
  <cfreturn TeacherList />
 </cffunction>

 <cffunction name="getTeacherID" returntype="query">
	<cfargument name="teacher_id" type="numeric" required="yes" />
	<cfstoredproc procedure="sp_teacher_id_form" datasource="cfEnrollment">
	<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@teacherId" null="no" value="#arguments.teacher_id#" />
				<cfprocresult name="GetTeacher" />
	</cfstoredproc>
	<cfreturn GetTeacher />	
</cffunction>

 <cffunction name="addTeacher">
		<cfargument name="TeacherFirstname" type="string" required="yes" />
		<cfargument name="TeacherLastname" type="string" required="yes" />
		<cfargument name="Teacherage" type="numeric" required="yes" />
		<cfargument name="TeacherCourse" type="string" required="yes" />
		<cfstoredproc procedure="sp_teacher_insert" datasource="cfEnrollment">
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@teacherFname" null="no" value="#arguments.TeacherFirstname#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@teacherLname" null="no" value="#arguments.TeacherLastname#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@teacherAge" null="no" value="#arguments.Teacherage#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@teacherCourse" null="no" value="#arguments.TeacherCourse#" />
		</cfstoredproc>
</cffunction>

 <cffunction name="UpdateTeacher">
 		<cfargument name="TeacherID" type="numeric" required="yes" />
		<cfargument name="TeacherFirstname" type="string" required="yes" />
		<cfargument name="TeacherLastname" type="string" required="yes" />
		<cfargument name="Teacherage" type="numeric" required="yes" />
		<cfargument name="TeacherCourse" type="string" required="yes" />
		<cfstoredproc procedure="sp_teacher_update" datasource="cfEnrollment">
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@teacherID" null="no" value="#id#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@teacherFname" null="no" value="#arguments.TeacherFirstname#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@teacherLname" null="no" value="#arguments.TeacherLastname#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@teacherAge" null="no" value="#arguments.Teacherage#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@TeacherCourse" null="no" value="#arguments.TeacherCourse#" />
		</cfstoredproc>
</cffunction>

<cffunction name="deleteTeacher">		
			<cfargument name="teacherId" type="numeric" required="yes" />
			<cfstoredproc procedure="[sp_delete_teacher_id]" datasource="cfEnrollment">		
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@TeacherID" null="no" value="#id#" />
			</cfstoredproc>
</cffunction>


 </cfcomponent>