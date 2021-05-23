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
               <a class="nav-link" href="#project-title">Statistics</a>
             </li>
           </ul>
         </div>
       </div>
     </nav>
</header>
<main>
<div class="form-container">
<hr>

<h1>Update the  question ${requestScope.question.id}</h1>
<hr>

<form action='../updatequestion?id=${question.id}' method='get'>
<div>${question.id } - 
<input type='hidden' name="id" class="questionbox" value='${question.id }'>
<input type='text' name='question' class="questionbox" value='${question.question }'>
<input class="submit-button" type='submit' name='ok' value='OK'></div>
</form>
<div class="info-img">
	<a href="../editallquestions"><button class="button" type="button">Back to Questions</button></a>
</div>
</div>

</main>
</body>
</html>