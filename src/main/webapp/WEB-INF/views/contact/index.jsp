<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="new" var="newContactUrl" />

<div class="page-header">
	<h1>Contacts</h1>
</div>

<a href="${newContactUrl}">Create a new contact&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a>

<div class="flowline-med">
	<c:choose>
		<c:when test="${!empty contacts}">
			<c:import url="/WEB-INF/views/contact/partials/contactList.jsp">
				<c:param name="contacts" value="${contacts}" />
			</c:import>
		</c:when>
		<c:otherwise>
			<p class="lead ">No contacts in your contact list</p>
		</c:otherwise>
	</c:choose>
</div>
