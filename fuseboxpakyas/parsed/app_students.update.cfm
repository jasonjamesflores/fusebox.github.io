<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: app_students --->
<!--- fuseaction: update --->
<cftry>
<cfset myFusebox.thisPhase = "appinit">
<cfset myFusebox.thisCircuit = "app_students">
<cfset myFusebox.thisFuseaction = "update">
<cfif myFusebox.applicationStart or
		not myFusebox.getApplication().applicationStarted>
	<cflock name="#application.ApplicationName#_fusebox_#FUSEBOX_APPLICATION_KEY#_appinit" type="exclusive" timeout="30">
		<cfif not myFusebox.getApplication().applicationStarted>
			<cfset myFusebox.getApplication().applicationStarted = true />
		</cfif>
	</cflock>
</cfif>
<!--- do action="m_students.get_students" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "m_students">
<cfset myFusebox.thisFuseaction = "get_students">
<cftry>
<cfoutput><cfinclude template="../model/students/act_get_students.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 20 and right(cfcatch.MissingFileName,20) is "act_get_students.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_get_students.cfm in circuit m_students which does not exist (from fuseaction m_students.get_students).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_course.get_course" --->
<cfset myFusebox.thisCircuit = "m_course">
<cfset myFusebox.thisFuseaction = "get_course">
<cftry>
<cfoutput><cfinclude template="../model/course/act_get_course.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 18 and right(cfcatch.MissingFileName,18) is "act_get_course.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_get_course.cfm in circuit m_course which does not exist (from fuseaction m_course.get_course).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_students.update_students" --->
<cfset myFusebox.thisCircuit = "m_students">
<cfset myFusebox.thisFuseaction = "update_students">
<cftry>
<cfoutput><cfinclude template="../model/students/act_update_students.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 23 and right(cfcatch.MissingFileName,23) is "act_update_students.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_update_students.cfm in circuit m_students which does not exist (from fuseaction m_students.update_students).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- fuseaction action="layout.mainLayout" --->
<cfset myFusebox.thisPhase = "postprocessFuseactions">
<cfset myFusebox.thisCircuit = "layout">
<cfset myFusebox.thisFuseaction = "mainLayout">
<cftry>
<cfoutput><cfinclude template="../view/layout/lay_template.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 16 and right(cfcatch.MissingFileName,16) is "lay_template.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse lay_template.cfm in circuit layout which does not exist (from fuseaction layout.mainLayout).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<cfcatch><cfrethrow></cfcatch>
</cftry>

