<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Spring 3 MVC Hibernate - Book CRUD</title>
	<style type="text/css">
		body {
			font-family: verdana;
			font-size: 12px;
			margin: 40px;
		}
		.bookTable, .bookTable td {
			border-collapse: collapse;
			border: 1px solid #aaa;
			margin: 2px;
			padding: 2px 2px 2px 10px;
			font-size: 12px;
		}
		.bookTable th {
			font-weight: bold;
			font-size: 12px;
			background-color: #5C82FF;
			color: white;
		}
		.bookLabel {
			font-family: verdana;
			font-size: 12px;
			font-weight: bold;
		}
		a, a:AFTER {
			color: blue;
		}
	</style>
	<script type="text/javascript">
	function deleteBook(bookId){
		if(confirm('Do you want to delete this Book ?')){
			var url = 'delete/'+bookId;
			window.location.href = url;
		}
	}
	</script>
</head>
<body bgcolor="#BCF5A9" align="center">

<h1><p style="color:#2E64FE;font-weight:bold;">Book Store - SpringMVC-Hibernate CRUD Application</p></h1>
<h3><p style="color:#FE2E2E;font-weight:bold;">To add a New Book please click <a href="<c:url value='/index' />" >
	<img src="<c:url value='/images/vcard_add.png' />" title="Add a New Book"/></h3>
</a>
</p>
<c:url var="action" value="/book/add.html" ></c:url>
<form:form method="post" action="${action}" commandName="book" cssClass="bookForm">
	<table  align="center" >
	<c:if test="${!empty book.name}">
	<tr>
		<td>
			<form:label path="id" cssClass="bookLabel">
				<spring:message code="label.bookId" />
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="name" cssClass="bookLabel">
				<spring:message code="label.name" />
			</form:label>
		</td>
		<td>
			<form:input path="name" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="author" cssClass="bookLabel">
				<spring:message code="label.author" />
			</form:label>
		</td>
		<td>
			<form:input path="author" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="price" cssClass="bookLabel">
				<spring:message code="label.price" />
			</form:label>
		</td>
		<td>
			<form:input path="price" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="quantity" cssClass="bookLabel">
				<spring:message code="label.qty" />
			</form:label>
		</td>
		<td>
			<form:input path="quantity" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty book.name}">
				<input type="submit"
					value="<spring:message code="label.editbook"/>" />
			</c:if>
			<c:if test="${empty book.name}">
				<input type="submit"
					value="<spring:message code="label.addbook"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<h2>List of Books in Library</h2>
<c:if test="${!empty bookList}">
<p align="center" >
	<table  class="bookTable"  >
	<tr>
		<th width="180">Book Name</th>
		<th width="160">Author Name</th>
		<th width="60">Price</th>
		<th width="80">Quantity</th>
		<th width="60">Action</th>
	</tr>
	<c:forEach items="${bookList}" var="book">
		<tr>
			<td><a href="<c:url value='/edit/${book.id}' />" >${book.name}</a></td>
			<td>${book.author}</td>
			<td>${book.price}</td>
			<td>${book.quantity}</td>
			<td><img src="<c:url value='/images/vcard_delete.png' />"
				title="Delete Book"
				onclick="javascript:deleteBook(${book.id})" />
							<a href="<c:url value='/edit/${book.id}' />"  >
					<img src="<c:url value='/images/vcard_add.png' />" title="Edit Book"/>
				</a>
			</td>
		</tr>
	</c:forEach>
	</table>
	</p>
</c:if>

</p>
</body>
</html>
