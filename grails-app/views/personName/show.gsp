
<%@ page import="au.com.pws.people3.PersonName" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personName.label', default: 'PersonName')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-personName" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-personName" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list personName">
			
				<g:if test="${personNameInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="personName.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${personNameInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personNameInstance?.middleNames}">
				<li class="fieldcontain">
					<span id="middleNames-label" class="property-label"><g:message code="personName.middleNames.label" default="Middle Names" /></span>
					
						<span class="property-value" aria-labelledby="middleNames-label"><g:fieldValue bean="${personNameInstance}" field="middleNames"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personNameInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="personName.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${personNameInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personNameInstance?.titles}">
				<li class="fieldcontain">
					<span id="titles-label" class="property-label"><g:message code="personName.titles.label" default="Titles" /></span>
					
						<span class="property-value" aria-labelledby="titles-label"><g:fieldValue bean="${personNameInstance}" field="titles"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personNameInstance?.honorifics}">
				<li class="fieldcontain">
					<span id="honorifics-label" class="property-label"><g:message code="personName.honorifics.label" default="Honorifics" /></span>
					
						<span class="property-value" aria-labelledby="honorifics-label"><g:fieldValue bean="${personNameInstance}" field="honorifics"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personNameInstance?.culture}">
				<li class="fieldcontain">
					<span id="culture-label" class="property-label"><g:message code="personName.culture.label" default="Culture" /></span>
					
						<span class="property-value" aria-labelledby="culture-label"><g:fieldValue bean="${personNameInstance}" field="culture"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personNameInstance?.contributor}">
				<li class="fieldcontain">
					<span id="contributor-label" class="property-label"><g:message code="personName.contributor.label" default="Contributor" /></span>
					
						<span class="property-value" aria-labelledby="contributor-label"><g:fieldValue bean="${personNameInstance}" field="contributor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personNameInstance?.nickName}">
				<li class="fieldcontain">
					<span id="nickName-label" class="property-label"><g:message code="personName.nickName.label" default="Nick Name" /></span>
					
						<span class="property-value" aria-labelledby="nickName-label"><g:fieldValue bean="${personNameInstance}" field="nickName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personNameInstance?.typeOfName}">
				<li class="fieldcontain">
					<span id="typeOfName-label" class="property-label"><g:message code="personName.typeOfName.label" default="Type Of Name" /></span>
					
						<span class="property-value" aria-labelledby="typeOfName-label"><g:fieldValue bean="${personNameInstance}" field="typeOfName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personNameInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personNameInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
