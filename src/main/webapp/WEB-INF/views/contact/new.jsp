<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="/" var="indexUrl" />

<div class="page-header">
	<h1>Add a new contact</h1>
</div>

<a href="${indexUrl}"><span class="glyphicon glyphicon-chevron-left"></span>&nbsp;back</a>

<div class="flowline-med">
	<c:if test="${!empty error}">
		<div class="alert alert-danger"><strong>Uh oh!</strong> ${error}</div>
	</c:if>

	<c:import url="/WEB-INF/views/contact/partials/contactForm.jsp">
		<c:param name="contact" value="${contact}" />
	</c:import>
</div>