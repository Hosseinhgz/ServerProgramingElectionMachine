<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">   
<link href="../CSS/style.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
 <%
 
 	// specify that this page should not cache with browser
 	response.setHeader("Cache-Control", "no-cache, no-store , must-revalidate"); //HTTP 1.1
 	response.setHeader("Pragma","no-cache"); //HTTP 1.0
 	response.setHeader("Expires","0"); //Proxies

 	// check for login 
 	if(session.getAttribute("username")==null){
 		response.sendRedirect("../jsp/adminlogin.jsp");
 	}
 %>
 <header>
   <nav class="navbar navbar-expand-lg navbar-dark bg-light navbar-fixed-top">
       <div class="container-fluid">
         <a class="navbar-brand" href="../index.jsp">Election Machine</a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav me-auto mb-2 mb-lg-0">
             <li class="nav-item">
               <a class="nav-link" aria-current="page" href=<% if (session.getAttribute("username")==null){out.println("/jsp/adminlogin.jsp");}else{out.println("/logout");} %>>
               <% if (session.getAttribute("username")==null){out.println("Login");}else{out.println("logout");} %></a>             </li>
             <li class="nav-item">
               <a class="nav-link" href="../statistics">Statistics</a>
             </li>
           </ul>
         </div>
       </div>
     </nav>
</header>
<main>
<h1>Edit Questions</h1>
<div class="form-container3">
<hr>
<p>Here you can add new question:</p>
<form action='../addquestion' method='get'>
	<input type='text' class="questionbox" name='question' placeholder="New question text" value=''>
	<input class="submit-button" type='submit' name='ok' value='OK'>
</form>

<hr>

<ol>
<c:forEach var="question" items="${requestScope.questionlist}">
<div class="row">
<div class="question-container col-md-7">
	<li>${question.question} </li>
</div>

<div class="question-buttons col-md-3">
	<a href='../deletequestion?id=${question.id}'><button class="submit-button-update">Delete</button></a> 
	<a href='../readtoupdatequestion?id=${question.id}'><button class="submit-button-delete">Update</button></a>
</div>
</div>
<hr>
</c:forEach>
</ol>
<div class="info-img">
	<a href="../jsp/adminmain.jsp"><button class="button" type="button">Back to login main</button></a>
</div>
</div>
</main>
</body>
</html>