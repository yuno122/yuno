<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Productreg.PrDAO"%>
<%@ page import="java.io.PrintWriter" %>
<%@page import="Productreg.Bean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.net.URLEncoder" %>



<!doctype html>
<html lang="ko">
  <head>
 
    <!-- Required meta tags -->
    <meta charset="EUC-KR">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<style>
		.box2{
			 margin: 10px;
		}
	</style>
    <title>Squid Auction</title>
  </head>
  <%
  		String id = null;
  		if(session.getAttribute("id") != null){
  			id = (String) session.getAttribute("id");
  		}
  		int pageNumber = 1;
  		
  %>
  
      <!--네브바-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#"> Squid Auction</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Account</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Mode
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">Buy</a></li>
                  <li><a class="dropdown-item" href="#">Sell</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Log out</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Ask</a>
              </li>
            </ul>
            <form action="./home.jsp" method="get" class = "form-inline my-2 my-lg-0">
            <input type = "text" name = "search" class="form-control mr-sm-2" type ="search" placeholder="search" >
            <button class = "btn btn-outline-success my-2 my-sm-0" type = "submit">search
            </form>
          </div>
        </div>
      </nav>


      <!--카테고리-->
      <hr/>
      <ul class="nav justify-content-center">
        <li class="nav-item">
          <a class="nav-link active text-body border-end border-start" aria-current="page" href="#">디지털기기</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-body border-end " href="#">생활가전</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">식품</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">유아용품</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">뷰티</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">스포츠</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">책</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">기타용품</a>
          </li>
      </ul>
      <hr/>
      <!--물품 표시-->
      <div calss="container">
    	  <div class="row mx-3">
       		   <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
            		<thead>
            			<tr>
            				<th style="background-color: #eeeeee; text-align: center;">name</th>
            				<th style="background-color: #eeeeee; text-align: center;">price</th>
            				<th style="background-color: #eeeeee; text-align: center;">bbsDate</th>
            			</tr>
            		</thead>
            		
            		<tbody>
                <%
               	 	PrDAO prDAO = new PrDAO();
               	 	ArrayList<Bean> list = prDAO.getList(pageNumber);
      				for(int i=0; i<list.size(); i++){
      					
                %>
               	<div class="card" style="width: 18rem;">
                	<tr class="box2">
                	<td><%= list.get(i).getName() %></td>
                	<td><%= list.get(i).getPrice() %></td>
                	<td><%= list.get(i).getBbsdate().substring(0,11)+list.get(i).getBbsdate().substring(11,13) + ":" + list.get(i).getBbsdate().substring(14,16)+"" %></td>
                	<a href="productPage.jsp?id=<%= list.get(0).getId() %>" class="btn btn-secondary">Auction</a>
                	            	
              </div>
          	<%
       			}
          	%>
          		</tbody>
	   		   </table>>
	  		</div>
	</div>
      <div>
          <hr/>
          <center><p> Team squid </p></center>
      </div>


    
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>
