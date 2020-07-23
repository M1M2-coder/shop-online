<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- Setting With TagLibrary The Context Root (Project Path) -->
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!-- Loading The Static Resources  -->
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>Online Shop - ${title}</title>

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap.css" rel="stylesheet">

<!-- Readable Bootstrap THEME CSS -->
<link href="${css}/Readable-Shop-Online-Theme.css" rel="stylesheet">

<!-- Add custom CSS here -->
<link href="${css}/myapp.css" rel="stylesheet">

<script type="text/javascript">
	window.menu = '${title}'
</script>

</head>

<body>

	<div class="wrapper">
		
		<!-- SECTION ONE: NAV-BAR -->
		<%@include file="./shared/navbar.jsp"%>

		<div class="content">
			
			<!--************************* END OF NAV-BAR SECTION **********************-->

			<!-- SECTION TWO: HOME PAGE -->
			<c:if test="${userClickHome == true}">
				<%@include file="./home.jsp"%>
			</c:if>
			<!--************************* END OF HOME-PAGE SECTION *********************-->


			<!-- SECTION THREE: ABOUT US PAGE -->
			<c:if test="${userClickAbout == true}">
				<%@include file="./about.jsp"%>
			</c:if>
			<!--************************* END OF ABOUT-US-PAGE SECTION *********************-->


			<!-- SECTION FOUR: CONTACT US PAGE -->
			<c:if test="${userClickContact == true}">
				<%@include file="./contact.jsp"%>
			</c:if>
			<!--************************* END OF CONTACT-US-PAGE SECTION *********************-->

		</div>
		<!-- SECTION: FOOTER  -->
		<%@include file="./shared/footer.jsp"%>

		<!--************************* END OF FOOTER SECTION **********************-->



		<!-- JavaScript -->
		<script src="${js}/jquery.js"></script>
		<script type="text/javascript" src="${js}/myapp.js"></script>
		<script src="${js}/bootstrap.js"></script>
	</div>
</body>

</html>
