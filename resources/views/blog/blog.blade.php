@foreach($posts as $post)
	Title: {{ $post->title }} <p><a href="/blog/{{ $post->slug }}">Click here to view</a></p><br>
	Excerpt: {{ $post->excerpt }} <br>
	Body:: {{ $post->body }} <br>
	Slug:: {{ $post->slug }} <br>
	Status:: {{ $post->status }}
	<hr>
@endforeach

@include('chat.chat')