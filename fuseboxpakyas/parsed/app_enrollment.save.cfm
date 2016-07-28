<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: app_enrollment --->
<!--- fuseaction: save --->
<cftry>
<cfset myFusebox.thisPhase = "appinit">
<cfset myFusebox.thisCircuit = "app_enrollment">
<cfset myFusebox.thisFuseaction = "save">
<cfif myFusebox.applicationStart or
		not myFusebox.getApplication().applicationStarted>
	<cflock name="#application.ApplicationName#_fusebox_#FUSEBOX_APPLICATION_KEY#_appinit" type="exclusive" timeout="30">
		<cfif not myFusebox.getApplication().applicationStarted>
			<cfset myFusebox.getApplication().applicationStarted = true />
		</cfif>
	</cflock>
</cfif>
<!--- do action="m_enrollment.get_enrollment" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "m_enrollment">
<cfset myFusebox.thisFuseaction = "get_enrollment">
<cftry>
<cfoutput><cfinclude template="../model/enrollment/act_get_enrollment.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 22 and right(cfcatch.MissingFileName,22) is "act_get_enrollment.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_get_enrollment.cfm in circuit m_enrollment which does not exist (from fuseaction m_enrollment.get_enrollment).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_subject.get_subjects" --->
<cfset myFusebox.thisCircuit = "m_subject">
<cfset myFusebox.thisFuseaction = "get_subjects">
<cftry>
<cfoutput><cfinclude template="../model/subjects/act_get_subjects.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 20 and right(cfcatch.MissingFileName,20) is "act_get_subjects.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_get_subjects.cfm in circuit m_subject which does not exist (from fuseaction m_subject.get_subjects).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_enrollment.get_fullname_teacher" --->
<cfset myFusebox.thisCircuit = "m_enrollment">
<cfset myFusebox.thisFuseaction = "get_fullname_teacher">
<cftry>
<cfoutput><cfinclude template="../model/enrollment/act_get_teacher_fullname.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 28 and right(cfcatch.MissingFileName,28) is "act_get_teacher_fullname.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_get_teacher_fullname.cfm in circuit m_enrollment which does not exist (from fuseaction m_enrollment.get_fullname_teacher).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_enrollment.save_enrollment" --->
<cfset myFusebox.thisFuseaction = "save_enrollment">
<cftry>
<cfoutput><cfinclude template="../model/enrollment/act_save_enrollment.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 23 and right(cfcatch.MissingFileName,23) is "act_save_enrollment.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse act_save_enrollment.cfm in circuit m_enrollment which does not exist (from fuseaction m_enrollment.save_enrollment).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="enrollment_display.header" --->
<cfset myFusebox.thisCircuit = "enrollment_display">
<cfset myFusebox.thisFuseaction = "header">
<cfsavecontent variable="header_content">
<cftry>
<cfoutput><cfinclude template="../view/enrollment/dsp_header.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_header.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_header.cfm in circuit enrollment_display which does not exist (from fuseaction enrollment_display.header).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
<!--- do action="enrollment_display.body" --->
<cfset myFusebox.thisFuseaction = "body">
<cfsavecontent variable="body_content">
<cftry>
<cfoutput><cfinclude template="../view/enrollment/dsp_body.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 12 and right(cfcatch.MissingFileName,12) is "dsp_body.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_body.cfm in circuit enrollment_display which does not exist (from fuseaction enrollment_display.body).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
<!--- do action="enrollment_display.footer" --->
<cfset myFusebox.thisFuseaction = "footer">
<cfsavecontent variable="footer_content">
<cftry>
<cfoutput><cfinclude template="../view/enrollment/dsp_footer.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_footer.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_footer.cfm in circuit enrollment_display which does not exist (from fuseaction enrollment_display.footer).">
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

