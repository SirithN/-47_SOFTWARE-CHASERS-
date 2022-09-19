<%@ Page Language="C#" AutoEventWireup="true"   CodeBehind="AdminHomePage.aspx.cs" Inherits="ProjectAirlines.AdminHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" /> 
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
 <link href="StyleSheet2.css" rel="stylesheet" type="text/css" />
   <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
</head>
<body>
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
        <%--<span class="fs-4">Welcome Admin</span>--%>
        <a href="#"><i class="fa fa-plane" aria-hidden="true"></i></a>
      </a>


    
     <ul class="nav nav-pills">
        <li class="nav-item"><a href="AdminHomePage.aspx" class="nav-link" aria-current="page">Home</a></li>
        <li class="nav-item"><a href="AddFlightDetails.aspx" class="nav-link">DashBoard</a></li>
        <li class="nav-item"><a href="LoginPage.aspx" class="nav-link">Logout</a></li>

      </ul>



   <%-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Red Airlines</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Dashboard</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">

      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>--%>
    </header>
        <form id="form1" runat="server">

        <div>
            <h1 class="text-bg-success">Welcome to Admin Home Page</h1>


                </div>

        
    </form>
</body>
</html>
