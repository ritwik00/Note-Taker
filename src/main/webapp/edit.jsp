<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Page</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<%@include file="Navbar.jsp"%>
	<h1>Edit Your Note</h1>
	<br>
	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());

	Session s = FactoryProvider.getFactory().openSession();
	Note note = (Note) s.get(Note.class, noteId);
	%>
	<form action="UpdateServlet" method="post">
		<input value="<%= note.getId()%>" name="noteId" type="hidden">
	
		<div class="form-group">
			<label for="title">Enter Notes Title</label><br> <input
				name="title" type="text" class="form-control" id="title"
				aria-describedby="emailHelp" placeholder="Enter notes title"
				required style="text-align: left;" value="<%= note.getTittle()%>">
		</div>
		<div class="form-group">
			<label for="text">Enter note details</label><br>
			<textarea name="content" id="content" class="form-control"
				placeholder="Note Content" style="height: 300px; width: 80em;"
				required><%= note.getContent() %></textarea>
		</div>
		<button type="submit" class="btn btn-primary">Save Notes</button>
	</form>

</body>
</html>