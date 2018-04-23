<h1>Results</h1>

@if(count($properties)> 0 )
@foreach($properties as $property)

Name: {{ $property->property_name }} <br>
Price: {{ $property->price }} <br>
Location: {{ $property->location }} <br>
Description: {{ $property->description }}<br>
========================================================================================

@endforeach
@else
<h2>No search results</h2>
@endif