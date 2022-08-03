<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*,org.hibernate.*,com.entites.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>


</head>
<body>

	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Edit Your Note</h1>
		<br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryPrvoider.getFactory().openSession();
		Note note = s.get(Note.class, noteId);
		%>


		<form action="UpdateServlet" method="post">

			<input value="<%=note.getId()%>" name="noteId" type="hidden">

			<div class="form-group">
				<label for="text">Note Title</label> <input type="text"
					required="required" name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here"
					value="<%=note.getTitle()%>">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required="required" class="form-control"
					style="height: 300px;" id="content"
					placeholder="Enter your content here"><%=note.getContent()%>					
					
					</textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Your
					Note</button>

			</div>

		</form>


	</div>

</body>
</html>