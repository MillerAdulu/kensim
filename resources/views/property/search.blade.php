
<!DOCTYPE html>

<html>

<body>

​

<h2>Advanced Search</h2>

​

<form action="/search" method="post">
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
  <input type="radio" name="mode" value="1"> Open Status<br>
  <br>
Price Min:<br>

  <input type="text" name="price_min" >

  Price Max:<br>

  <input type="text" name="price_max" >

  <br>
  <br>
Bedrooms:<br>

<select name="beds">
  <option value="1">1+ bed</option>
  <option value="2">2+ bed</option>
  <option value="3">3+ bed</option>
  <option value="4">4+ bed</option>
  <option value="5">5+ bed</option>
</select>
<br>
Bathrooms:<br>
<select name="baths">
<option value="1">1+ bats</option>
  <option value="2">2+ bats</option>
  <option value="3">3+ bats</option>
  <option value="4">4+ bats</option>
  <option value="5">5+ bats</option>
</select>

<br>
<br>
Property_type:<br>

 <select name="type">
 @foreach($types as $type)
 <option value="{{ $type->id }}">{{ $type->type }}</option>
 @endforeach

</select> 

  <br>
Square Feet:<br>
<select>
  <option value="sq">250+ sqft</option>
  <option value="sq">500+ sqft</option>
  <option value="sq">1000+ sqft</option>
  <option value="sq">1500+ sqft</option>
  <option value="sq">2000+ sqft</option>
  <option value="sq">2500+ sqft</option>
  <option value="sq">3000+ sqft</option>
  <option value="sq">3500+ sqft</option>
  <option value="sq">4000+ sqft</option>
  <option value="sq">4500+ sqft</option>
  <option value="sq">5000+ sqft</option>
</select>

  

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

