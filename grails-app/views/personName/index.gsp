
<%@ page import="au.com.pws.people3.PersonName" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personName.label', default: 'PersonName')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personName" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personName" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'personName.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="middleNames" title="${message(code: 'personName.middleNames.label', default: 'Middle Names')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'personName.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="titles" title="${message(code: 'personName.titles.label', default: 'Titles')}" />
					
						<g:sortableColumn property="honorifics" title="${message(code: 'personName.honorifics.label', default: 'Honorifics')}" />
					
						<g:sortableColumn property="culture" title="${message(code: 'personName.culture.label', default: 'Culture')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personNameInstanceList}" status="i" var="personNameInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personNameInstance.id}">${fieldValue(bean: personNameInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: personNameInstance, field: "middleNames")}</td>
					
						<td>${fieldValue(bean: personNameInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: personNameInstance, field: "titles")}</td>
					
						<td>${fieldValue(bean: personNameInstance, field: "honorifics")}</td>
					
						<td>${fieldValue(bean: personNameInstance, field: "culture")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personNameInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
