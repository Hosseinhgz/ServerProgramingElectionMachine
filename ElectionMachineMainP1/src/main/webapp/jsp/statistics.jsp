<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
 <%@ page import="java.util.ArrayList" %>   
 <%@ page import="data.Question" %>
 <%@ page import="data.Statistic" %>
 
 <%@ page import="java.sql.Connection" %>  
 <%@ page import="java.sql.DriverManager" %>   
 <%@ page import="dao.Dao" %>
 <%@ page import="dao.StatisticsDao" %> 
  
 <%@ page import="data.CounterIndex" %>   



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
 <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">   
<link href="../CSS/style.css" rel="stylesheet">
<title>Statistics</title>
</head>
<body>
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
<div class="form-container1">
<h1>Your Answers:</h1>

<table border="1">
	<tbody>
		<tr>
			<td>Question</td>
			<td>Number of Answer completely disagree</td>
			<td>Number of Answer disagree</td>
			<td>Number of Answer Middle Opinion</td>
			<td>Number of Answer Agree</td>
			<td>Number of Answer completely Agree</td>
			
		</tr>
	<%
		ArrayList<Statistic> List=(ArrayList<Statistic>)request.getAttribute("statisticslist");
		
		for(int i = 0; i<List.size(); i++){
			
		Statistic s = List.get(i);
		out.println("<tr>");
		out.println("<td>"+s.getQuestion()+"</td>");
		out.println("<td>"+s.getNumAns1()+"</td>");
		out.println("<td>"+s.getNumAns2()+"</td>");
		out.println("<td>"+s.getNumAns3()+"</td>");
		out.println("<td>"+s.getNumAns4()+"</td>");
		out.println("<td>"+s.getNumAns5()+"</td>");
		out.println("</tr>");
		}
		//num[i] = f.getId();
		//question[i] = f.getQuestion();
	%>
	</tbody>
</table>
<br>

	<div class="info-img">
		<a href="../index.jsp"><button class="button" type="button">Go to Main</button></a>
	</div>
</div>

</main>
</body>
</html>