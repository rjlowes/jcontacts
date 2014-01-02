<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="test" uri="/WEB-INF/ViewHelpersDescriptor.tld"%>

<%-- @todo work out how to add a "has-error" class onto the surrounding div tags 
	 A quick fix might be a tag helper to check the err.field value and if an error is preset
	 adds a string to the class for that field --%>

<c:set var="formMethod" value="${empty param.formMethod ? 'post' : param.formMethod}" />
<c:set var="formAction" value="${empty param.formAction ? '/' : param.formAction}" />
<c:set var="formButtonLabel" value="${empty param.formButtonLabel ? 'Save' : param.formButtonLabel}" />

<c:if test="${!empty errors}">
	<div class="alert alert-danger">
		<strong>Uh oh,</strong> Something's wrong!
	</div>
</c:if>



<form:form method="${formMethod}" action="${formAction}" commandName="contact" class="form-horizontal" role="form">
	<div class="form-group<test:validClass field="firstname" cssClass=" has-error" errors="${errors}" />">
		<form:label path="firstname" cssClass="col-sm-2 control-label">Firstname</form:label>
		<div class="col-sm-10">
			<form:input path="firstname" cssClass="form-control" />
			<form:errors path="firstname" cssClass="control-label" />
		</div>
	</div>
	
	<div class="form-group<test:validClass field="lastname" cssClass=" has-error" errors="${errors}" />">
		<form:label path="lastname" cssClass="col-sm-2 control-label">Lastname</form:label>
		<div class="col-sm-10">
			<form:input path="lastname" cssClass="form-control" />
			<form:errors path="lastname" cssClass="control-label" />
		</div>
	</div>
	
	<div class="form-group<test:validClass field="phone" cssClass=" has-error" errors="${errors}" />">
		<form:label path="phone" cssClass="col-sm-2 control-label">Phone</form:label>
		<div class="col-sm-10">
			<form:input path="phone" cssClass="form-control" />
			<form:errors path="phone" cssClass="control-label" />
		</div>
	</div>
	
	<div class="form-group<test:validClass field="email" cssClass=" has-error" errors="${errors}" />">
		<form:label path="email" cssClass="col-sm-2 control-label">Email</form:label>
		<div class="col-sm-10">
			<form:input path="email" cssClass="form-control" />
			<form:errors path="email" cssClass="control-label" />
		</div>
	</div>

	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-primary btn-large"><c:out value="${formButtonLabel}" /></button>
		</div>
	</div>

</form:form>
