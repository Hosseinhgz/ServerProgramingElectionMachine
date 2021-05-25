<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 
 <%@ page import="java.util.ArrayList" %>   
 <%@ page import="data.Question" %>
 <%@ page import="java.sql.Connection" %>  
 <%@ page import="java.sql.DriverManager" %>   
 <%@ page import="dao.Dao" %> 
 <%@ page import="dao.CandidateDao" %> 
 <%@ page import="data.CandidateAnswers" %>
 <%@ page import="data.Result" %>
 <%@ page import="data.Candidate" %>   
   



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
<div class="form-container1">
<h1>Suggested Candidates:</h1>


<table border="1">
	<tbody>
		<tr>
			<td> candidate id </td>
			<td> Candidate Firstname </td>
			<td> Candidate Surname </td>	
			<td> Similarity Percent </td>	
			
			
		</tr>
	<%
	
		ArrayList<Candidate> List = (ArrayList<Candidate>)request.getAttribute("resultlist");
		ArrayList<Result> suggestlist = (ArrayList<Result>)session.getAttribute("suggestlist");

		//ArrayList<Result> List=(ArrayList<Result>)request.getAttribute("resultlist");			
		//Result r = List.get(i);
		//out.println("<tr>");
		//out.println("<td>"+r.getCandidateid()+"</td>");
		//out.println("<td>"+r.getCustomerid()+"</td>");
		//out.println("<td>"+r.getResult()+"</td>");
		//out.println("</tr>");
		
		for(int i = 0; i< List.size(); i++){
		Candidate c = List.get(i);
		Result r = suggestlist.get(i);

		out.println("<tr>");
		out.println("<td> "+ c.getId()+" </td>");
		out.println("<td> "+ c.getFirstname()+" </td>");
		out.println("<td> "+ c.getSurname()+" </td>");
		out.println("<td> "+ r.getResult()+" </td>");		
		out.println("</tr>");

		}
	%>
	</tbody>
</table>
<br>
</div>
<div class='row'>
<% 
for(int i = 0; i< List.size(); i++){
	Candidate c = List.get(i);

out.println("<div class='col-sm-4'>");
	out.println("<div id='project1' class='project_cards'>");
		out.println("<div class='card_photo'>");
		out.println("<div class='demobox' id='demobox1'>");
		out.println("<a href='https://codepen.io/hosseinhgz/pen/qBaeoOa'><img src='./images/Candidate"+c.getId()+".jpg' alt='Candidate - tribute page' style='width:400px;height:260px;'></a>");
		out.println("</div>");
				out.println("</div>");
				out.println("<div class='card-header'>");

				out.println("<h4>"+c.getFirstname()+""+c.getSurname()+"</h4>");
		out.println("</div>");
		out.println("<div class='card-describe'>");
		out.println("<p class='card-text'><b>Candidate id:</b>"+c.getId()+"</p>");	    
		out.println("<p class='card-text'><b>Candidate Party:</b>"+c.getParty()+"</p>");	    
		out.println("<p class='card-text'><b>Candidate Location:</b>"+c.getLocation()+"</p>");    
		out.println("<p class='card-text'><b>Candidate profession:</b>"+c.getProfessional()+"</p>");
		out.println("<a href='../showonecandidate?id="+c.getId()+"' class='btn btn-primary'>More Information</a>");
	    
		out.println("</div>");
	out.println("</div>");
out.println("</div>");	

}
%>
</div>
</main>
</body>
</html>