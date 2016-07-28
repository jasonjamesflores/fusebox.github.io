<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the model portion of an application.
-->
<circuit access="internal">
    <fuseaction name="get_teacher">
        <include template="act_get_teacher" />
    </fuseaction>

    <fuseaction name="save_teacher">
        <include template="act_save_teacher" />
    </fuseaction>

    <fuseaction name="get_teacher_id">
        <include template="act_get_teacher_by_id" />
    </fuseaction>

    <fuseaction name="update_teacher">
        <include template="act_update_teachers.cfm" />
    </fuseaction>

     <fuseaction name="delete_teacher">
        <include template="act_delete_teacher" />
    </fuseaction>
</circuit>
