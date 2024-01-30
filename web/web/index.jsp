<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <title> System Login </title>
</head>
<body>
  <%@include file="myHTML/home_page.html" %>
  <div class="container well-lg ">
    <div class="sidenav col-lg-3">
      <img height="" width="" src="myCSS/note3.PNG">
    </div>
    <div class="well col-lg-6 col-lg-offset-3">
      <form method="post" action="Login_Controller">
        <div class="form-group col-lg-8 col-lg-offset-2">
          <label class="control-label" for="login">Login Type</label>
          <select class="form-control" name="loginType">
            <option value="Admin">Admin</option>
            <option value="Student">Student</option>
          </select>
        </div>
        <div class="form-group col-lg-8 col-lg-offset-2">
          <label class="control-label" for="userName">User Name</label>
          <input type="text" class="form-control" name="userName" placeholder="user name" required="">
        </div>
        <div class="form-group col-lg-8 col-lg-offset-2">
          <label class="control-label" for="password">Password</label>
          <input type="password" class="form-control" name="password" placeholder="password" required="">
        </div>
        <div class="col-lg-offset-2 col-lg-4 ">
          <button type="submit" class="btn btn-primary">Login</button>
        </div>
      </form>
      <div class="col-lg-7 col-lg-offset-1 well-lg">
        <a href="student_registration_form.jsp" > Registration Here </a>
      </div>
    </div>
  </div>
</body>
</html>