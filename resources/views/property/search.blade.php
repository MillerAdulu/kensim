<form action="/search" method="post">

	{{ csrf_field() }}

	<input type="text" placeholder="Location" name="location">
	<input type="text" placeholder="Rent/Sale" name="rs">
	<input type="text" placeholder="Max price" name="max">
	<input type="text" placeholder="Min price" name="min">
	<input type="text" placeholder="Bedrooms" name="rooms">
	<input type="text" placeholder="Bathrooms" name="bath">
	<input type="text" placeholder="Size" name="size">
	<input type="submit" value="Search">

</form>