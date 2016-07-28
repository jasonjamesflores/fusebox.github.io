<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the model portion of an application.
-->
<circuit access="internal">
    <fuseaction name="get_course">
        <include template="act_get_course" />
    </fuseaction>
      <fuseaction name="save_course">
        <include template="act_save_course.cfm" />
    </fuseaction>
     <fuseaction name="delete_course">
        <include template="act_delete_course.cfm" />
    </fuseaction>
    <fuseaction name="get_course_id">
        <include template="act_get_course_by_id" />
      </fuseaction>
         <fuseaction name="update_course">
        <include template="act_update_course.cfm" />
    </fuseaction>
</circuit>
