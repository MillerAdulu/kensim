@foreach($properties as $property)

    Property name: {{ $property->property_name }} <br>
    Location: {{ $property->location }} <br>
    Mode: {{ $property->mode }} <br>
    Price: {{ $property->price }} <br>
    Bedrooms: {{ $property->bedrooms }} <br>
    Bathrooms: {{ $property->bathrooms }} <br>
    Size: {{ $property->size }} <br>
    Type: {{ $property->type }} <br>
    Image:: <img src="{{ Voyager::image($property->featured_image) }}"/> <br>
    Description: {{ $property->description }} <br>

@endforeach

@include('chat.chat')