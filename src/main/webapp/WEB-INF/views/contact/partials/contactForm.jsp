<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form method="post" action="/" commandName="contact" class="form-horizontal" role="form">
	<div class="form-group">
		<form:label path="firstname" cssClass="col-sm-2 control-label">Firstname</form:label>
		<div class="col-sm-10">
			<form:input path="firstname" cssClass="form-control" />
		</div>
	</div>
	
	<div class="form-group">
		<form:label path="lastname" cssClass="col-sm-2 control-label">Lastname</form:label>
		<div class="col-sm-10">
			<form:input path="lastname" cssClass="form-control" />
		</div>
	</div>
	
	<div class="form-group">
		<form:label path="phone" cssClass="col-sm-2 control-label">Phone</form:label>
		<div class="col-sm-10">
			<form:input path="phone" cssClass="form-control" />
		</div>
	</div>
	
	<div class="form-group">
		<form:label path="email" cssClass="col-sm-2 control-label">Email</form:label>
		<div class="col-sm-10">
			<form:input path="email" cssClass="form-control" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary btn-large">Save</button>
		</div>
	</div>

</form:form>

