<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the model portion of an application.
-->
<circuit access="internal">
    <fuseaction name="get_students">
        <include template="act_get_students" />
    </fuseaction>

    <fuseaction name="save_students">
        <include template="act_save_students" />
    </fuseaction>

	<fuseaction name="delete_students">
        <include template="act_delete_students" />
    </fuseaction>

    <fuseaction name="get_students_id">
        <include template="act_get_students_by_id.cfm" />
    </fuseaction>

    <fuseaction name="update_students">
        <include template="act_update_students.cfm" />
    </fuseaction>

</circuit>
