<cfsilent>

<cfset xfa.subjects_main = "app_subj.main" />
<cfset xfa.course_main = "app_course.main" />
<cfset xfa.students_main = "app_students.main" />
<cfset xfa.teacher_main = "app_teacher.main" />
<cfset xfa.enrollment_main = "app_enrollment.main" />

<cfset xfa.enrollment_save = "app_enrollment.save" />
<cfset xfa.course_save = "app_course.save" />
<cfset xfa.students_save = "app_students.save" />
<cfset xfa.subjects_save = "app_subj.save" />
<cfset xfa.teacher_save = "app_teacher.save" />



<!--- Initialize applicaiton manager components. --->
    <cfparam name="url.appReload" type="string" default="false"/>
    <cfif not structKeyExists(application, 'appInitialized') or url.appReload>
        <cflock name="appInitBlock" type="exclusive" timeout="10">
            <cfif not structKeyExists(application, 'appInitialized') or url.appReload>
                <cfset application.subjectservices = createObject('component', 'fuseboxpakyas.components.subject').init()/>
                <cfset application.courseservices = createObject('component', 'fuseboxpakyas.components.course').init()/>
                <cfset application.studentservices = createObject('component', 'fuseboxpakyas.components.students').init()/>
                <cfset application.teacherservices = createObject('component', 'fuseboxpakyas.components.teachers').init()/>
                <cfset application.enrollmentservices = createObject('component', 'fuseboxpakyas.components.enrollment').init()/>
                <cfset application.appInitialized = true/>
            </cfif>
        </cflock>
        <cfset structClear(session)/>
    </cfif>

<!--- Set app constants. --->
    <cfset self = "index.cfm">
    <cfset mySelf = "#urlSessionFormat('#self#')#"/>

    <cfif findNoCase('index.cfm;', mySelf)>
        <cfset mySelf = replace(mySelf, 'index.cfm;', 'index.cfm?')/>
    </cfif>

    <cfif right(mySelf, 9) eq "index.cfm">
        <cfset mySelf = mySelf & "?"/>
        <cfelse>
        <cfset mySelf = mySelf & "&"/>
    </cfif>

    <cfset mySelf = mySelf & "#application.fusebox.fuseactionVariable#="/>

</cfsilent>