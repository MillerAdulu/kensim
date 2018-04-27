@foreach($properties as $property)

    {{ $property->price }} <br>
    {{ $property->property_name }} <br>

    <img src="{{Voyager::image($property->featured_image)}}"></img>

    @foreach(json_decode($property->gallery) as $image)
        <img src="{{Voyager::image($image)}}"></img>
    @endforeach

@endforeach

@include('chat.chat')