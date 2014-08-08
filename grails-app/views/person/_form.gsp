<%@ page import="au.com.pws.people3.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'personName', 'error')} required">
	<label for="personName">
		<g:message code="person.personName.label" default="Person Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="personName" name="personName.id" from="${au.com.pws.people3.PersonName.list()}" optionKey="id" required="" value="${personInstance?.personName?.id}" class="many-to-one"/>

</div>

