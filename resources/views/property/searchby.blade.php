
<!DOCTYPE html>

<html>

<body>

​

<h2>Search By</h2>

​

<form action="/searchby" method="post">
{{csrf_field()}}

Search_By:<br>

<input type="text" name="parameter"value="">

<br>
Category:<br>
  <input type="radio" name="category" value="0">Location<br>
  <input type="radio" name="category" value="1">Min_Price<br>
  <input type="radio" name="category" value="2">Max_Price<br>
  <input type="radio" name="category" value="3">Rent<br>
  <input type="radio" name="category" value="4">Sale<br>

  <br>


<input type="submit" value="Submit">

</form> 

​
​

</body>

</html>

​

