@extends('layouts.master')

@section('title', 'Blog')

@section('content')

	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">Blog</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div class="blog-lst col-md-12 pl0">

					@foreach($posts as $post)

					<section class="post">
						<div class="text-center padding-b-50">
							<h2 class="wow fadeInLeft animated">{{ $post->title }}</h2>
							<div class="title-line wow fadeInRight animated"></div>
						</div>

						<div class="row">
							<div class="col-sm-6">
								<p class="author-category">
									By <a href="#">John Snow</a>
								</p>
							</div>

						</div>
						<div class="image wow fadeInLeft animated">
							<a href="/blog/{{ $post->slug }}">
								<img src="{{Voyager::image($post->image)  }}" class="img-responsive" alt="{{ $post->title }} Image">
							</a>
						</div>
						<p class="intro">{{ $post->excerpt }}</p>
						<p class="read-more">
							<a href="/blog/{{ $post->slug }}" class="btn btn-default btn-border">Continue reading</a>
						</p>
					</section>

					@endforeach

				</div>
			</div>

		</div>
	</div>

	@include('chat.chat')

@endsection