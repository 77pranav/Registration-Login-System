<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
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
                         <a class="nav-link active" aria-current="page" href="../index.jsp">Go back</a>
                     </li>
                     <li class="nav-item">
                         <a class="nav-link active" aria-current="page" href="#"><%= session.getAttribute("name") %></a>
                     </li>
                </ul>
            </div>
        </div>
    </nav>
    <form class="mt-4 ms-4" action="/registration/registers" method="post">
        <div class="form-group">
            <label for="exampleInputTitle1">Title</label>
            <input type="text" class="form-control" id="exampleInputTitle1" name="blogtitle" aria-describedby="emailHelp" placeholder="Enter blog title">
        </div>
        <br>
        <div class="form-group">
            <label for="exampleInputBlogImage1">Upload Blog Image</label>
            <input type="file" class="form-control" id="exampleInputBlogImage1" name="blogimage" aria-describedby="emailHelp">
        </div>
        <br>
        <div class="form-group">
            <label for="exampleInputBody1">Blog</label>
            <textarea class="form-control" id="exampleInputBody1" name="body"></textarea>
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</body>
</html>
