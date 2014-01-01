<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!doctype html>
<html lang="en">
	<head>
		<title>Template</title>
		<meta charset="utf-8" />
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="/resources/css/main.css" />
		<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	</head>
	<body>
		<tiles:insertAttribute name="header" />
		<div class="container">
			<tiles:insertAttribute name="body" />
		</div>
		<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	</body>
</html>