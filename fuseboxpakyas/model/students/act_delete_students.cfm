<cfset delete_students="#application.studentservices.deleteStudent(url.id)#" />
<cflocation url="index.cfm?action=app_students.main" />