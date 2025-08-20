<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width ,initial-scale=1.0, shrink-to-fit=no"/>
    <title>
        Checking
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-primary" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Page</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <ul class="navbar-nav">
                 <li class="nav-item">
                     <a class="nav-link active" aria-current="page" href="login.jsp">Log In</a>
                 </li>
            </ul>
        </div>
    </div>
</nav>
<% if(request.getAttribute("status")!=null && request.getAttribute("status").equals("failed")){ %>
    <div class="container mt-4">
        <div class="alert alert-danger" role="alert">
            Wrong Input
        </div>
    </div>
<% } %>
<form class="mt-4 ms-4" action="../registers" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1">Full Name</label>
        <input type="text" class="form-control" id="exampleInputFullName1" name="fullname" aria-describedby="emailHelp" placeholder="Enter full name">
    </div>
    <br>
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp" placeholder="Enter email">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <br>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password">
    </div>
    <br>
    <div class="form-group">
        <label for="exampleInputEmail1">Phone number</label>
        <input type="tel" class="form-control" id="exampleInputPhoneNumber1" name="phonenumber" aria-describedby="emailHelp" placeholder="Enter phone number">
    </div>
    <br>
    <div class="form-group">
        <label for="exampleInputCoverImage1">Cover Image</label>
        <input type="file" class="form-control" id="exampleInputCoverImage1" name="coverimage" aria-describedby="emailHelp">
     <div>
     <br>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</body>
</html>