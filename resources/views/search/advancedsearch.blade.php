<div class="panel panel-default sidebar-menu wow fadeInRight animated" >
	<div class="panel-heading">
		<h3 class="panel-title">Smart search</h3>
	</div>
	<div class="panel-body search-widget">
		<form action="/search" method="post" class=" form-inline">
			@csrf
			<fieldset>
				<div class="row">
					<div class="col-xs-12">
						<input type="text" class="form-control" name="keyword" placeholder="Key word">
					</div>
				</div>
			</fieldset>

			<fieldset>
				<div class="row">
					<div class="col-xs-6">
						<select id="lunchBegins" class="selectpicker" data-live-search="true" name="city" data-live-search-style="begins" title="Select Your Location">
							<option value = "Kiambu Road">Kiambu Road</option>
							<option value = "Village Inn">Village Inn</option>
						</select>
					</div>
					<div class="col-xs-6">

						<select id="basic" class="selectpicker show-tick form-control" name="mode" required>
							<option value = "0">For Rent </option>
							<option value = "1">For Sale</option>
						</select>
					</div>
				</div>
			</fieldset>

			<fieldset class="padding-5">
				<div class="row">
					<div class="col-xs-6">
						<label for="property-geo">Minimum Price:</label>
						<input type="text" class="form-control" name="minPrice" placeholder="Min price" required>
					</div>
					<div class="col-xs-6">
						<label for="price-range">Maximum Price :</label>
						<input type="text" class="form-control" name="maxPrice" placeholder="Max Price" required>
					</div>
				</div>
			</fieldset>

			<fieldset class="padding-5">
				<div class="row">
					<div class="col-xs-6">
						<label for="price-range">Bathrooms:</label>
						<input type="text" class="form-control" name="bathrooms" placeholder="Bathrooms" required>

					</div>

					<div class="col-xs-6">
						<label for="property-geo">Bedrooms:</label>
						<input type="text" class="form-control" name="bedrooms" placeholder="Bedrooms" required>
					</div>
				</div>
			</fieldset>


			<fieldset >
				<div class="row">
					<div class="col-xs-12">
						<input class="button btn largesearch-btn" value="Search" type="submit">
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>