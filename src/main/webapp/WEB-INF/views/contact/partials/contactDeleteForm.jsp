<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="deleteContactUrl" value="/${contact.id}" />

<form:form method="delete" action="${deleteContactUrl}" commandName="contact" class="form-horizontal" role="form">
	
	<input type="hidden" name="_method" value="DELETE" />

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary btn-large" data-toggle="modal" data-target="#modal">Delete</button>
		</div>
	</div>

</form:form>

<c:import url="/WEB-INF/views/partials/modal.jsp">
	<c:param name="modalTitle" value="Delete Contact?" />
	<c:param name="modalBody" value="Are you sure you want to delete ${contact.firstname} ${contact.lastname} from your contact lits?" />
</c:import>

