<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE fusebox>
<!--
	Example fusebox.xml control file. Shows how to define circuits, classes,
	parameters and global fuseactions.

	This is just a test namespace for the plugin custom attribute example
-->
<fusebox xmlns:test="test">
	<!--
		this is a model-view-controller application
		there is one public controller circuit (controller/, aliased to app)
		there is one internal model circuit (model/time/, aliased to time)
		there are two internal view circuits:
			view/display, aliased to display
			view/layout, aliased to layout
	-->
	<circuits>
		<!-- illustrates defaults for parent ("") and relative ("true") -->
	
		<circuit alias="layout" path="view/layout/" parent="" />

		<circuit alias="app_subj" path="controller/subjects" relative="true" />
		<circuit alias="subj_display" path="view/subjects/" parent="" />
		<circuit alias="m_subject" path="model/subjects/" parent="" />

		<circuit alias="app_course" path="controller/course" relative="true" />
		<circuit alias="course_display" path="view/course/" parent="" />
		<circuit alias="m_course" path="model/course/" parent="" />

		<circuit alias="app_students" path="controller/students" relative="true" />
		<circuit alias="students_display" path="view/students/" parent="" />
		<circuit alias="m_students" path="model/students/" parent="" />

		<circuit alias="app_teacher" path="controller/teacher" relative="true" />
		<circuit alias="teacher_display" path="view/teacher/" parent="" />
		<circuit alias="m_teacher" path="model/teacher/" parent="" />

		<circuit alias="app_enrollment" path="controller/enrollment" relative="true" />
		<circuit alias="enrollment_display" path="view/enrollment/" parent="" />
		<circuit alias="m_enrollment" path="model/enrollment/" parent="" />
	</circuits>

	<!--
	<classes>
		<class alias="MyClass" type="component" classpath="path.to.SomeCFC" constructor="init" />
	</classes>
	-->

	<parameters>

		<parameter name="defaultFuseaction" value="app_students.main" />
		<parameter name="fuseactionVariable" value="action" />
		<!-- you may want to change this to development-full-load mode: -->
		<parameter name="mode" value="development-full-load" />
        <parameter name="conditionalParse" value="true" />
		<!-- change this to something more secure: -->
        <parameter name="password" value="skeleton" />
        <parameter name="strictMode" value="true" />
        <parameter name="debug" value="false" />
        <!-- we use the core file error templates -->
        <parameter name="errortemplatesPath" value="/fusebox5/errortemplates/" />
		<!--
			These are all default values that can be overridden:
		<parameter name="fuseactionVariable" value="fuseaction" />
		<parameter name="precedenceFormOrUrl" value="form" />
		<parameter name="scriptFileDelimiter" value="cfm" />
		<parameter name="maskedFileDelimiters" value="htm,cfm,cfml,php,php4,asp,aspx" />
		<parameter name="characterEncoding" value="utf-8" />
		<parameter name="strictMode" value="false" />
		<parameter name="allowImplicitCircuits" value="false" />
		-->
	</parameters>

	<globalfuseactions>
		<appinit>
			
		</appinit>
		<postprocess>
				<fuseaction action="layout.mainLayout"/>
		</postprocess>
	</globalfuseactions>
		<!--
		<preprocess>
			<fuseaction action="time.preprocess"/>
		</preprocess>
		<postprocess>
			<fuseaction action="time.postprocess"/>
		</postprocess>
		-->


	<plugins>
		<phase name="preProcess">
		</phase>
		<phase name="preFuseaction">
		</phase>
		<phase name="postFuseaction">
		</phase>
		<phase name="fuseactionException">
		</phase>
		<phase name="postProcess">
		</phase>
		<phase name="processError">
		</phase>
	
	</plugins>

</fusebox>
