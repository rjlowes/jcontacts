<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url value="/" var="indexUrl" />

<div class="page-header">
	<h1>Your contact ${contact.firstname}</h1>
</div>

<a href="${indexUrl}"><span class="glyphicon glyphicon-chevron-left"></span>&nbsp;back</a>

<div class="flowline-med">
	<dl class="dl-horizontal">
		<dt>Name</dt><dd><c:out value="${contact.firstname} ${contact.lastname}" /></dd>
		<dt>Tel no.</dt><dd><c:out value="${contact.phone}" /></dd>
		<dt>email</dt><dd>${contact.email}</dd>
	</dl>
</div>

<c:url value="/${contact.id}/edit" var="editContactUrl" />

<a href="${editContactUrl}" class="btn btn-primary btn-large">edit</a>

<c:import url="/WEB-INF/views/contact/partials/contactDeleteForm.jsp">
	<c:param name="contact" value="${contact}" />
</c:import>

<script>
	$('.confirm').click(function () {
		$('form').submit();
	});
</script>


