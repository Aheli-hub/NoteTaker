
<%@ page import= "org.hibernate.Session" %>
<%@ page import= "java.util.List" %>
<%@ page import= "com.entities.Note" %>
<%@ page import= "org.hibernate.Query" %>
<%@ page import= "com.helper.FactoryProvider" %>
<%@ page import=" javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<%@ include file = "all_js_css.jsp"  %>
</head>
<body>
<div body ="container-fluid p-0 m-0">
    <%@ include file = "navbar.jsp" %>
    
    <h1>ALL NOTES</h1>
    <br>
     <div class="row">
     <div class="col-12">
     
     <%  
    Session s = FactoryProvider.getSessionFactory().openSession();
   Query q = s.createQuery("from Note");
   List <Note> list = q.list();
   for(Note note: list){
   	out.println(note.getId()+":"+note.getTitle());
   	%>
   	<div class="card mt-3" >
  <img class="card-img-top m-4 mx-auto" style="max-width: 100px;"src="image/notes.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <div class ="container text-center mt-2">
    <a href="DeleteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
    <a href="update.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
    </div>
  </div>
</div>
   	
   	<%
   }
   	s.close(); %>
     
     
     </div>
     
     
     
     
     
     </div>
    
    
       
    
    </div>
</body>
</html>