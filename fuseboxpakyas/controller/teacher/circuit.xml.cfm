<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the controller portion of an application.
	Only the controller circuit has public access - the controller circuit
	contains all of the fuseactions that are used in links and form posts
	within your application.
-->
<circuit access="public" xmlns:cf="cf/">
	<!--
		Apply a standard layout to the result of every request.
		This is fine for simple applications that have just one layout but
		for more complicated situations you will need to do something more
		advanced.
	-->
	<prefuseaction>
			<do action="m_teacher.get_teacher" />
	</prefuseaction>

	<fuseaction name="main">
		<do action="teacher_display.header" contentvariable="header_content" />
		<do action="teacher_display.body" contentvariable="body_content" />
		<do action="teacher_display.footer" contentvariable="footer_content" />
	</fuseaction>

	<fuseaction name="save">
		<do action="m_teacher.save_teacher" />
		<do action="teacher_display.header" contentvariable="header_content" />
		<do action="teacher_display.body" contentvariable="body_content" />
		<do action="teacher_display.footer" contentvariable="footer_content" />
	</fuseaction>

	<fuseaction name="edit_layout">		
		<do action="m_teacher.get_teacher_id" />
		<do action="teacher_display.header_edit_teacher" contentvariable="header_content" />
		<do action="teacher_display.body_edit_teacher" contentvariable="body_content" />
		<do action="teacher_display.footer" contentvariable="footer_content" />
    </fuseaction>

	<fuseaction name="update">		
		<do action="m_teacher.update_teacher" />
		<do action="teacher_display.header" contentvariable="header_content" />
		<do action="teacher_display.body" contentvariable="body_content" />
		<do action="teacher_display.footer" contentvariable="footer_content" />
    </fuseaction>

    <fuseaction name="delete">
        <do action="m_teacher.delete_teacher" />
        <do action="teacher_display.header" contentvariable="header_content" />
		<do action="teacher_display.body" contentvariable="body_content" />
		<do action="teacher_display.footer" contentvariable="footer_content" />
    </fuseaction>

</circuit>
