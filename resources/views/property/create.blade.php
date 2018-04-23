
<!DOCTYPE html>

<html>

<body>

​

<h2>Property</h2>

​

<form action="/property/store" method="post">
{{csrf_field()}}

Property_name:<br>

  <input type="text" name="property_name" value="name">

  <br>
Location:<br>

  <input type="text" name="location">

  <br>
Mode:<br>
  <input type="radio" name="mode" value="0"> For Sale<br>
  <input type="radio" name="mode" value="1"> For Rent<br>
  <br>
Price:<br>

  <input type="text" name="price" >

  <br>
  <br>
Bedrooms:<br>

<input type="text" name="bedrooms" >

<br>
<br>
Bathrooms:<br>

<input type="text" name="bathrooms" >

<br>
<br>
Property_type:<br>

 <select name="type">
 @foreach($types as $type)
 <option value="{{ $type->id }}">{{ $type->type }}</option>
 @endforeach

</select> 

  <br>
Size:<br>

  <input type="text" name="size" value="size">

  <br>
Description:
<textarea rows="7" cols="50" name="description" placeholder="Enter text here..."></textarea>
<br>
<!-- Featured_image:
<input type="file" name="pic" accept="image/*"> -->
  <!-- <input type="submit"> -->


  <input type="submit" value="Submit">

</form> 

​
​

</body>

</html>

​

