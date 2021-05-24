<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">   
<link href="../CSS/style.css" rel="stylesheet">
<title>Candidates List</title>
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
<h1> ${candidate.firstname} ${candidate.surname}</h1>
<div class="form-container1">
	<div class="candidates-info">
		<div class="info-img">
			<img  src="./images/Candidate${candidate.id}.jpg" style="width:400px;height:260px;border-radius:30px;">
		</div>
		<div class="candidate-info"><p class="info-text"><b>Candidate ID: </b>${candidate.id}</p></div>
		<div class="candidate-info"><p class="info-text"><b>First Name: </b>${candidate.firstname}</p></div>
		<div class="candidate-info"><p class="info-text"><b>Last Name: </b>${candidate.surname}</p></div>
		<div class="candidate-info"><p class="info-text"><b>IKA: </b>${candidate.ika}</p></div>
		<div class="candidate-info"><p class="info-text"><b>Location: </b>${candidate.location}</p></div>
		<div class="candidate-info"><p class="info-text"><b>Party: </b>${candidate.party}</p></div>
		<div class="candidate-info"><p class="info-text"><b>Profession: </b>${candidate.professional}</p></div>
		<div class="candidate-info"><p class="info-text"><b>WHAT ATHES WANT EDES: </b>${candidate.whatAthesWantEdes}</p></div>
		<div class="candidate-info"><p class="info-text"><b>WHY COMMISSION: </b>${candidate.whyCommission}</p></div>
	</div>
	<div class="info-img">
		<a href="../showallcandidates"><button class="button" type="button">Go to all Candidates</button></a>
	</div>
</div>
</main>
</body>
</html>