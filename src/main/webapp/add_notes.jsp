<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add notes here</title>
<%@ include file = "all_js_css.jsp"  %>
</head>
<body>
  <div body ="container-fluid p-0 m-0">
    <%@ include file = "navbar.jsp" %>
    <br>
    <h1>Please Add Notes Here</h1>
    <br>
    <form action="SaveNotesServlet" method="post">
  <div class="form-group">
    <label for="title">Add Note</label>
    <input name="title"required type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter here">
    
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" required id = "content"
    placeholder="Enter Here"
    class="form-control"
    style="height:300px"
    ></textarea>
   
  </div>
  
  <button type="submit" style="background-color: blue"class="btn btn-primary">Add</button>
</form>
    </div>
</body>
</html>