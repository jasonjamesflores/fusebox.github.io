<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: app --->
<!--- fuseaction: welcome --->
<cftry>
<cfset myFusebox.thisPhase = "appinit">
<cfset myFusebox.thisCircuit = "app">
<cfset myFusebox.thisFuseaction = "welcome">
<cfif myFusebox.applicationStart or
		not myFusebox.getApplication().applicationStarted>
	<cflock name="#application.ApplicationName#_fusebox_#FUSEBOX_APPLICATION_KEY#_appinit" type="exclusive" timeout="30">
		<cfif not myFusebox.getApplication().applicationStarted>
<!--- fuseaction action="time.initialize" --->
<cfset myFusebox.trace("Runtime","&lt;fuseaction action=""time.initialize""/&gt;") >
<cfset myFusebox.thisCircuit = "time">
<cfset myFusebox.thisFuseaction = "initialize">
<cfset myFusebox.getApplication().getApplicationData().startTime = "#now()#" />
<cfset myFusebox.thisCircuit = "app">
<cfset myFusebox.thisFuseaction = "welcome">
			<cfset myFusebox.getApplication().applicationStarted = true />
		</cfif>
	</cflock>
</cfif>
<!--- do action="display.header" --->
<cfset myFusebox.trace("Runtime","&lt;do action=""display.header""/&gt;") >
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "display">
<cfset myFusebox.thisFuseaction = "header">
<cfset myFusebox.trace("Runtime","&lt;include template=""dsp_header.cfm"" circuit=""display""/&gt;") >
<cftry>
<cfoutput><cfinclude template="../view/display/dsp_header.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_header.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_header.cfm in circuit display which does not exist (from fuseaction display.header).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="display.body" --->
<cfset myFusebox.trace("Runtime","&lt;do action=""display.body""/&gt;") >
<cfset myFusebox.thisFuseaction = "body">
<cfset myFusebox.trace("Runtime","&lt;include template=""dsp_body.cfm"" circuit=""display""/&gt;") >
<cftry>
<cfoutput><cfinclude template="../view/display/dsp_body.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 12 and right(cfcatch.MissingFileName,12) is "dsp_body.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_body.cfm in circuit display which does not exist (from fuseaction display.body).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="display.footer" --->
<cfset myFusebox.trace("Runtime","&lt;do action=""display.footer""/&gt;") >
<cfset myFusebox.thisFuseaction = "footer">
<cfset myFusebox.trace("Runtime","&lt;include template=""dsp_footer.cfm"" circuit=""display""/&gt;") >
<cftry>
<cfoutput><cfinclude template="../view/display/dsp_footer.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_footer.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_footer.cfm in circuit display which does not exist (from fuseaction display.footer).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="layout.mainLayout" --->
<cfset myFusebox.trace("Runtime","&lt;do action=""layout.mainLayout""/&gt;") >
<cfset myFusebox.thisCircuit = "layout">
<cfset myFusebox.thisFuseaction = "mainLayout">
<cfset myFusebox.trace("Runtime","&lt;include template=""lay_template.cfm"" circuit=""layout""/&gt;") >
<cftry>
<cfoutput><cfinclude template="../view/layout/lay_template.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 16 and right(cfcatch.MissingFileName,16) is "lay_template.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse lay_template.cfm in circuit layout which does not exist (from fuseaction layout.mainLayout).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<cfcatch><cfrethrow></cfcatch>
</cftry>

