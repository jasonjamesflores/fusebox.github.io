<cfcomponent displayname="Course" hint="ColdFusion Component for Course">


<cffunction name="Init" access="public" returntype="Course" output="false" displayname="" hint="">
        <cfreturn this />
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

<cffunction name="addCourse">
		<cfargument name="courseDescription" type="string" required="yes" />
		<cfstoredproc procedure="sp_insert_course" datasource="cfEnrollment">
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@course_desc" null="no" value="#arguments.courseDescription#" />
		</cfstoredproc>
</cffunction>

<cffunction name="updateCourse">
		<cfargument name="courseId" type="numeric" required="yes" />
		<cfargument name="courseDescription" type="string" required="yes" />
		<cfstoredproc procedure="sp_update_course" datasource="cfEnrollment">
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@course_Id" null="no" value="#id#" />
			<cfprocparam type="in" cfsqltype="CF_SQL_VARCHAR" dbvarname="@course_desc" null="no" value="#arguments.courseDescription#" />
		</cfstoredproc>
</cffunction>

<cffunction name="deleteCourse">		
			<cfargument name="CourseId" type="numeric" required="yes" />
			<cfstoredproc procedure="sp_delete_course" datasource="cfEnrollment">		
			<cfprocparam type="in" cfsqltype="CF_SQL_INTEGER" dbvarname="@@ourse_id" null="no" value="#id#" />
			</cfstoredproc>
</cffunction>

</cfcomponent>