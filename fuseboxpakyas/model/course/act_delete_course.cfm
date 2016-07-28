<cfset delete_course="#application.courseservices.deleteCourse(url.id)#" />
<cflocation url="index.cfm?action=app_course.main" />