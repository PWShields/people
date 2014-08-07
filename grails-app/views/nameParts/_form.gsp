<%@ page import="au.com.pws.people3.NameParts" %>



<div class="fieldcontain ${hasErrors(bean: namePartsInstance, field: 'namePart', 'error')} ">
	<label for="namePart">
		<g:message code="nameParts.namePart.label" default="Name Part" />
		
	</label>
	<g:textField name="namePart" value="${namePartsInstance?.namePart}"/>

</div>

