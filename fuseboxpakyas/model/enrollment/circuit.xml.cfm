<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the model portion of an application.
-->
<circuit access="internal">
    <fuseaction name="get_enrollment">
        <include template="act_get_enrollment" />
    </fuseaction>
    <fuseaction name="get_fullname_teacher">
        <include template="act_get_teacher_fullname" />
    </fuseaction>
     <fuseaction name="save_enrollment">
        <include template="act_save_enrollment" />
    </fuseaction>
    <fuseaction name="delete_enrollment">
        <include template="act_delete_enrollment" />
    </fuseaction>
     <fuseaction name="get_enrollment_id">
        <include template="act_get_enrollment_by_id" />
    </fuseaction>
    <fuseaction name="update_enrollment">
        <include template="act_update_enrollment.cfm" />
    </fuseaction>

</circuit>
