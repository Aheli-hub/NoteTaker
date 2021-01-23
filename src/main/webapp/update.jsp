<%@ page import= "com.entities.Note" %>
<%@ page import= "com.helper.FactoryProvider" %>
<%@ page import=" org.hibernate.Session" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file = "all_js_css.jsp"  %>
</head>
<body>
<div class ="container-fluid p-0 m-0">
    <%@ include file = "navbar.jsp" %>
    <h1>Edit your note</h1>
    <%
    int noteId = Integer.parseInt(request.getParameter("note_id" ).trim());
	Session s = FactoryProvider.getSessionFactory().openSession();
	
	Note note= s.get(Note.class, noteId);
    %>
     <form action="UpdateServlet" method="post">
     <input value="<%=note.getId() %>" name="noteId"type= "hidden"/>
  <div class="form-group">
    <label for="title">Add Note</label>
    <input name="title"required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here"value="<%=note.getTitle()%>">
    
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" required id = "content"
    placeholder="Enter Here"
    class="form-control"
    style="height:300px"><%=note.getContent()%>
    </textarea>
   
  </div>
  
  <button type="submit" style="background-color: green"class="btn btn-syccess">Save</button>
</form>
    </div>
</body>
</html>