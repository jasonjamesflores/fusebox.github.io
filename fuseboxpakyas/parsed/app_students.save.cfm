<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: app_students --->
<!--- fuseaction: save --->
<cftry>
<cfset myFusebox.thisPhase = "appinit">
<cfset myFusebox.thisCircuit = "app_students">
<cfset myFusebox.thisFuseaction = "save">
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
<!--- do action="m_students.save_students" --->
<cfset myFusebox.thisCircuit = "m_students">
<cfset myFusebox.thisFuseaction = "save_students">
<cftry>
<cfoutput><cfinclude template="../model/students/act_save_students.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 21 and right(cfcatch.MissingFileName,21) is "act_save_students.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_save_students.cfm in circuit m_students which does not exist (from fuseaction m_students.save_students).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="students_display.header" --->
<cfset myFusebox.thisCircuit = "students_display">
<cfset myFusebox.thisFuseaction = "header">
<cfsavecontent variable="header_content">
<cftry>
<cfoutput><cfinclude template="../view/students/dsp_header.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_header.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_header.cfm in circuit students_display which does not exist (from fuseaction students_display.header).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
<!--- do action="students_display.body" --->
<cfset myFusebox.thisFuseaction = "body">
<cfsavecontent variable="body_content">
<cftry>
<cfoutput><cfinclude template="../view/students/dsp_body.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 12 and right(cfcatch.MissingFileName,12) is "dsp_body.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_body.cfm in circuit students_display which does not exist (from fuseaction students_display.body).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
<!--- do action="students_display.footer" --->
<cfset myFusebox.thisFuseaction = "footer">
<cfsavecontent variable="footer_content">
<cftry>
<cfoutput><cfinclude template="../view/students/dsp_footer.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_footer.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_footer.cfm in circuit students_display which does not exist (from fuseaction students_display.footer).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
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

