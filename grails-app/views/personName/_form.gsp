<%@ page import="au.com.pws.people3.PersonName" %>



<div class="fieldcontain ${hasErrors(bean: personNameInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="personName.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${personNameInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personNameInstance, field: 'middleNames', 'error')} ">
	<label for="middleNames">
		<g:message code="personName.middleNames.label" default="Middle Names" />
		
	</label>
	<g:textField name="middleNames" value="${personNameInstance?.middleNames}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personNameInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="personName.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${personNameInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personNameInstance, field: 'titles', 'error')} ">
	<label for="titles">
		<g:message code="personName.titles.label" default="Titles" />
		
	</label>
	<g:textField name="titles" value="${personNameInstance?.titles}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personNameInstance, field: 'honorifics', 'error')} ">
	<label for="honorifics">
		<g:message code="personName.honorifics.label" default="Honorifics" />
		
	</label>
	<g:textField name="honorifics" value="${personNameInstance?.honorifics}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personNameInstance, field: 'culture', 'error')} required">
	<label for="culture">
		<g:message code="personName.culture.label" default="Culture" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="culture" from="${au.com.pws.people3.Culture?.values()}" keys="${au.com.pws.people3.Culture.values()*.name()}" required="" value="${personNameInstance?.culture?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personNameInstance, field: 'contributor', 'error')} ">
	<label for="contributor">
		<g:message code="personName.contributor.label" default="Contributor" />
		
	</label>
	<g:textField name="contributor" value="${personNameInstance?.contributor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personNameInstance, field: 'nickName', 'error')} ">
	<label for="nickName">
		<g:message code="personName.nickName.label" default="Nick Name" />
		
	</label>
	<g:textField name="nickName" value="${personNameInstance?.nickName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: personNameInstance, field: 'typeOfName', 'error')} required">
	<label for="typeOfName">
		<g:message code="personName.typeOfName.label" default="Type Of Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="typeOfName" from="${au.com.pws.people3.TypeOfName?.values()}" keys="${au.com.pws.people3.TypeOfName.values()*.name()}" required="" value="${personNameInstance?.typeOfName?.name()}" />

</div>

