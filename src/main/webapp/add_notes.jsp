<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
 <%@ include file="all_js_css.jsp" %>
</head>
<body>
	<%@include file="Navbar.jsp"  %>
	<h1>Please Fill your notes details</h1>
	<br>
	
	
	<!-- from for taking notes details -->
	
	<form action="SaveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Enter Notes Title</label><br>
    <input name="title"  type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter notes title" required style="text-align: left;">
  </div>
  <div class="form-group">
    <label for="text">Enter note details</label><br>
     <textarea name="content" id="content"  class="form-control" placeholder="Note Content" style="height: 300px ; width: 80em;" required></textarea>
  </div>
  <button type="submit" class="btn btn-primary">Add</button>
</form>

</body>
</html>