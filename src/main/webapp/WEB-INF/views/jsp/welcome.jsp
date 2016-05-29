<%@page session="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Spring Jetty websockets</title>

<c:url var="home" value="/" scope="request" />

<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

<spring:url value="/resources/core/js/jquery.1.10.2.min.js"
	var="jqueryJs" />
	<%----%>
<script src="${jqueryJs}"></script>
	<script src="//cdn.jsdelivr.net/sockjs/1/sockjs.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.js"></script>
	<spring:url value="/resources/core/js/main.js"
				var="mainJS" />
	<script src="${mainJS}"></script>

</head>

<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Spring Jetty websockets</a>
		</div>
	</div>
</nav>

<div class="container" style="min-height: 500px">

	<input type="text" name="serverData" placeholder="Input text to send to the server..."/>

	<textarea name="log"></textarea>
	<button type="button" id="bth-search" class="btn btn-primary btn-lg">Click to send data</button>

</div>



</body>
</html>