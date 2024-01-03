<%@page import="com.entities.*"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show All Notes</title>
<%@ include file="all_js_css.jsp"%>

</head>
<body>
	<%@include file="Navbar.jsp"%>
	<div class="row" >
		<div class="col-12">
			<%
		Session s = FactoryProvider.getFactory().openSession();
		Query q = s.createQuery("from Note");
		List<Note> list = q.list();
		for (Note notes : list) {
			%>
			<div class="card mt-3 text-center" style="width:inherit;">
				<img class="card-img-top m-4 mx-auto" src="img/note-taking.png" alt="Card image cap" style="max-width: 100px">
				<div class="card-body">
					<h5 class="card-title"><%= notes.getTittle() %></h5>
					<p class="card-text">
						<%= notes.getContent() %>
					</p>
					<a href="DeleteServlet?note_id=<%= notes.getId() %>" class="btn btn-danger">delete</a>
					<a href="edit.jsp?note_id=<%= notes.getId() %>" class="btn btn-primary">Update</a>
				</div>
			</div>
			<%
			}
			 s.close(); %>
		</div>
	</div>


</body>
</html>