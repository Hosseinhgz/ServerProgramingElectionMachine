<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
 <%@ page import="java.util.ArrayList" %>   
 <%@ page import="data.Question" %>
 <%@ page import="java.sql.Connection" %>  
 <%@ page import="java.sql.DriverManager" %>   
 <%@ page import="dao.Dao" %> 
 <%@ page import="dao.CandidateDao" %> 
 <%@ page import="data.CandidateAnswers" %>
 <%@ page import="data.Result" %>
 <%@ page import="data.CounterIndex" %>   



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
 <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">   
<link href="../CSS/style.css" rel="stylesheet">
<title>Customer Answers</title>
</head>
<body>
 <header>
   <nav class="navbar navbar-expand-lg navbar-dark bg-light navbar-fixed-top">
       <div class="container-fluid">
         <a class="navbar-brand" href="../index.html">Election Machine</a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
           <ul class="navbar-nav me-auto mb-2 mb-lg-0">
             <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="../jsp/adminlogin.jsp">Login</a>
             </li>
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
<h1>Suggested Candidates:</h1>


<table border="1">
	<tbody>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
			<td>5</td>
			
			
		</tr>
	<%
		ArrayList<CandidateAnswers> List=(ArrayList<CandidateAnswers>)request.getAttribute("resultlist");
		
		for(int i = 0; i< List.size(); i++){
			
		CandidateAnswers ca = List.get(i);
		out.println("<tr>");
		out.println("<td>"+ca.getId()+"</td>");
		out.println("<td>"+ca.getCandidateid()+"</td>");
		out.println("<td>"+ca.getQuestion()+"</td>");
		out.println("<td>"+ca.getCandidateans()+"</td>");
		out.println("<td>"+ca.getComment()+"</td>");
		out.println("</tr>");
		}

	%>
	</tbody>
</table>
<br>

	<div class="info-img">
		<a href="#"><button class="button" type="button">Go to Suggestions</button></a>
	</div>
</div>

</main>
</body>
</html>