<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
 <%@ page import="java.util.ArrayList" %>   
 <%@ page import="data.Question" %>
 <%@ page import="data.CounterIndex" %>
 
 <%@ page import="java.sql.Connection" %>  
 <%@ page import="java.sql.DriverManager" %>   
 <%@ page import="dao.Dao" %> 
 <%@ page import="app.SaveAnswers" %>  
 
    
 
    

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
 <head>
    <meta http-equiv="content-type" content="application/xhtml+xml; charset=UTF-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">   
    <link href="../CSS/style.css" rel="stylesheet">

    <title>Election Machine questions</title>
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
  <div class="form-container">
    <!-- question part is start here-->
    <div>
      <h1 id="title">Election Machine</h1>
      <p id="description">Answer these 20 questions to suggest the best candidates for you:</p>
    </div>
<hr>
<form data-ajax="false" method="post"  id="radioanswer">
	       	<% 
	       	// create index for questions for test
			//CounterIndex j = new CounterIndex();
			// out.println("your index is: "+ j.getIndex());
	       	
			ArrayList<Question> questionList=(ArrayList<Question>)request.getAttribute("questionlist");
			
			// IMP The value is not coming to this page
			//ArrayList<CounterIndex> index=(ArrayList<CounterIndex>)request.getAttribute("index");	
			//int i =index.getIndex();
			int i = 0;
			if(i<19){
				Question f = questionList.get(i);
				out.println(f.getId()+" . "+f.getQuestion());
			}else{			
				out.println("There is no such question! \n");
	        }		

			%>
			
		<input type="hidden"  name="id2" value="${requestScope.question.id}">
		<input type="hidden"  name="question" value="${requestScope.question.question}">
		<input type="hidden"  name="" value="${requestScope.question.answer}" >

		
	   <div class="radio-buttons">
	          <input type="radio" Class="recommend-radio" name="answer" value="0" style="visibility: hidden;" checked ><br>
              <input type="radio" Class="recommend-radio" name="answer" value="1" >
              <label id="definitely">Definitely Agree</label><br>
              <input type="radio" Class="recommend-radio" name="answer" value="2" >
              <label id="maybe">Agree</label><br>
              <input type="radio" Class="recommend-radio" name="answer" value="3">
              <label id="not-sure">Middle opinion</label><br>
              <input type="radio" Class="recommend-radio" name="answer" value="4">
              <label id="not-sure">Disagree</label><br>
              <input type="radio" Class="recommend-radio" name="answer" value="5">
              <label id="not-sure">Completely disagree</label><br>
              <hr>
              <p><b>your current saved choice is : ${requestScope.question.answer}</b></p>
              <hr>
          </div>

     <div class="buttons" data-role="fieldcontain">
     	<input formaction='../backonequestion?id=${requestScope.question.id-1}'  id="previous" type="submit" class="question-button" name="action" value="Previous"> 
		<input formaction='../readonequestion?id=${requestScope.question.id+1}' id="next" type="submit" class="question-button"  name="action" value="Next">
		<input formaction='../showresult'  type="submit" class="question-button"  name="ok" value="Finish">
			
     </div>	
</form>
    </div>
</main>
</body>
<script type="text/javascript">
	let index =  ${f.getId()} ;
	if (index==1){
		document.getElementById("previous").disabled = true;
	}
	let index2 =  ${requestScope.question.id} ;
	if (index2==19){
		document.getElementById("next").disabled = true;
	}

</script>
</html>