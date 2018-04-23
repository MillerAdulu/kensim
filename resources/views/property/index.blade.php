@foreach($properties as $property)

{{ $property->property_name }}
{{ $property->size }}
{{ $property->price }}
@endforeach