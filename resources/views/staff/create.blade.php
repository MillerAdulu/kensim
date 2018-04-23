<!DOCTYPE html>
<html>
<body>

<h2>HTML Forms</h2>

<form action="/staff/store" method="post">
    {{ csrf_field()}}
  Name:<br>
  <input type="text" name="name">
  <br>
  Email:<br>
  <input type="email" name="email">
  <br><br>
  Phone:
  <input type="text" name="phoneNumber">
  <br><br>
  <input type="submit" value="Submit">
</form>

</body>
</html>
