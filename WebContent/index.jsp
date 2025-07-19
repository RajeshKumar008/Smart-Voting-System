<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="Stylesheet" href="css/bootstrap.min.css">
</head>
<style>
body{
background-image:url("image/election india.png");
background-size:cover;
}
:nth-child(3) {
  background: yellow;
}
.navbar-nav{
float:rigth;
}
</style>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="float-right" >
    <ul class="navbar-nav">

      <li class="nav-item">
        <a class="nav-link" href="main.jsp"><button type="button" class="btn btn-danger">VOTER</button></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="eclogin.jsp"><button type="button" class="btn btn-danger">ELECTION COMISSION</button></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="candidatelog.jsp" ><button type="button" class="btn btn-danger">CANDIDATE</button></a>
      </li>
    </ul>
  </div>
</nav>
</body>
</html>