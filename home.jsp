<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="Productreg.PrDAO"%>
<%@ page import="java.io.PrintWriter" %>
<%@page import="Productreg.Bean"%>
<%@page import="java.util.ArrayList"%>

<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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
            <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>
      <!--카테고리-->
      <hr/>
      <ul class="nav justify-content-center">
        <li class="nav-item">
          <a class="nav-link active text-body border-end border-start" aria-current="page" href="#">Popular product</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-body border-end " href="#">Computer</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-body border-end " href="#">Cloth</a>
        </li>
        <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">Furniture</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">Hobby</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">Beauty</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">Sport</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">Car supplies</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">Book</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body border-end " href="#">musical instrument</a>
          </li>
      </ul>
      <hr/>
      <!--물품 표시-->
      <div calss="container">
      <div class="row mx-3">
          <div class="col-md-4 mt-4">
            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <%
                	PrDAO prDAO = new PrDAO();
                	ArrayList<Bean> list = prDAO.getList(pageNumber);
      
                %>
                <tr>
                	<td><%= list.get(0).getName() %></td>
                	<td><%= list.get(0).getPrice() %></td>
                	<td><%= list.get(0).getBbsdate() %></td>
                </tr>
          
              </div>
          </div>
          <div class="col-md-4 mt-4">
            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Auction</a>
                </div>
              </div>
          </div>
          <div class="col-md-4 mt-4">
            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Auction</a>
                </div>
              </div>
          </div>
          <div class="col-md-4 mt-4">
            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Auction</a>
                </div>
              </div>
          </div>
          <div class="col-md-4 mt-4">
            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Auction</a>
                </div>
              </div>
          </div>
          <div class="col-md-4 mt-4">
            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                  <a href="#" class="btn btn-primary">Auction</a>
                </div>
              </div>
          </div>
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