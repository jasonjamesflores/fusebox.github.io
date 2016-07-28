<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the display portion of an application.
-->
<circuit access="internal">
	<!--
		Example display fuseaction. The output of the template is placed
		in a content variable which is used in the layout template.
	-->

    <fuseaction name="header">
        <include template="dsp_header.cfm" />
    </fuseaction>

	<fuseaction name="body">
		<include template="dsp_body.cfm" />
	</fuseaction>

    <fuseaction name="footer">
        <include template="dsp_footer.cfm" />
    </fuseaction>

     <fuseaction name="header_edit_enrollment">
        <include template="dsp_edit_header.cfm" />
    </fuseaction>

	<fuseaction name="body_edit_enrollment">
		<include template="dsp_edit_body.cfm" />
	</fuseaction>

</circuit>
