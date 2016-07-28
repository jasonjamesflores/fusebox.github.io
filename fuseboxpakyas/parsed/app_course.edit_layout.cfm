<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: app_course --->
<!--- fuseaction: edit_layout --->
<cftry>
<cfset myFusebox.thisPhase = "appinit">
<cfset myFusebox.thisCircuit = "app_course">
<cfset myFusebox.thisFuseaction = "edit_layout">
<cfif myFusebox.applicationStart or
		not myFusebox.getApplication().applicationStarted>
	<cflock name="#application.ApplicationName#_fusebox_#FUSEBOX_APPLICATION_KEY#_appinit" type="exclusive" timeout="30">
		<cfif not myFusebox.getApplication().applicationStarted>
			<cfset myFusebox.getApplication().applicationStarted = true />
		</cfif>
	</cflock>
</cfif>
<!--- do action="m_course.get_course" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "m_course">
<cfset myFusebox.thisFuseaction = "get_course">
<cftry>
<cfoutput><cfinclude template="../model/course/act_get_course.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 18 and right(cfcatch.MissingFileName,18) is "act_get_course.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_get_course.cfm in circuit m_course which does not exist (from fuseaction m_course.get_course).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_course.get_course_id" --->
<cfset myFusebox.thisFuseaction = "get_course_id">
<cftry>
<cfoutput><cfinclude template="../model/course/act_get_course_by_id.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 24 and right(cfcatch.MissingFileName,24) is "act_get_course_by_id.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_get_course_by_id.cfm in circuit m_course which does not exist (from fuseaction m_course.get_course_id).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="course_display.header_edit_course" --->
<cfset myFusebox.thisCircuit = "course_display">
<cfset myFusebox.thisFuseaction = "header_edit_course">
<cfsavecontent variable="header_content">
<cftry>
<cfoutput><cfinclude template="../view/course/dsp_edit_header.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 19 and right(cfcatch.MissingFileName,19) is "dsp_edit_header.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_edit_header.cfm in circuit course_display which does not exist (from fuseaction course_display.header_edit_course).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
<!--- do action="course_display.body_edit_course" --->
<cfset myFusebox.thisFuseaction = "body_edit_course">
<cfsavecontent variable="body_content">
<cftry>
<cfoutput><cfinclude template="../view/course/dsp_edit_body.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 17 and right(cfcatch.MissingFileName,17) is "dsp_edit_body.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_edit_body.cfm in circuit course_display which does not exist (from fuseaction course_display.body_edit_course).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
<!--- do action="course_display.footer" --->
<cfset myFusebox.thisFuseaction = "footer">
<cfsavecontent variable="footer_content">
<cftry>
<cfoutput><cfinclude template="../view/course/dsp_footer.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_footer.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_footer.cfm in circuit course_display which does not exist (from fuseaction course_display.footer).">
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

