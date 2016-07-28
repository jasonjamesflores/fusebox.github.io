<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the model portion of an application.
-->
<circuit access="internal">
    <fuseaction name="get_subjects">
        <include template="act_get_subjects" />
    </fuseaction>

 	<fuseaction name="delete_subjects">
        <include template="act_delete_subjects.cfm" />
    </fuseaction>

    <fuseaction name="save_subjects">
        <include template="act_save_subjects.cfm" />
    </fuseaction>

    <fuseaction name="get_subjects_id">
        <include template="act_get_subjects_by_id.cfm" />
    </fuseaction>

     <fuseaction name="update_subjects">
        <include template="act_update_subjects.cfm" />
    </fuseaction>
    
</circuit>
