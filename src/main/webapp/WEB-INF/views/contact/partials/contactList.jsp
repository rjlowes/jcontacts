<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table summary="" class="table">
	<thead>
		<tr>
			<th id="name">Name</th>
			<th id="email">Email</th>
			<th id="tel">Telephone</th>
			<th id="actions">Actions</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${contacts}" var="contact">
		<c:url value="${contact.id}" var="url" />
		<tr>
			<td>${contact.firstname}&nbsp;${contact.lastname}</td>
			<td>${contact.email}</td>
			<td>${contact.phone}</td>
			<td><a href="${url}">Show&nbsp;<span class="glyphicon glyphicon-chevron-right"></span></a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>