@extends('layouts.master')

@section('title', $post->title)

@section('content')
	<div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
		<div class="container">
			<div class="row">
				<div class="blog-lst col-md-9 p0">
					<section id="id-100" class="post single">

						<div class="post-header single">
							<div class="">
								<h2 class="wow fadeInLeft animated">{{ $post->title }}</h2>
								<div class="title-line wow fadeInRight animated"></div>
							</div>
							<div class="row wow fadeInRight animated">
								<div class="col-sm-6">
									<p class="author-category">
										By <a href="#">John Snow</a>

									</p>
								</div>

							</div>
							<div class="image wow fadeInRight animated">
								<img src="{{ Voyager::image($post->image) }}" class="img-responsive" alt="Example blog post alt">
							</div>
						</div>

						<div id="post-content" class="post-body single wow fadeInLeft animated">

							{!!  $post->body  !!}

						</div>

					</section>


				</div>


				<div class="blog-asside-right col-md-3">
					<div class="panel panel-default sidebar-menu wow fadeInRight animated" >
						<div class="panel-heading">
							<h3 class="panel-title">Summary</h3>
						</div>
						<div class="panel-body text-widget">
							<p>{{ $post->excerpt }}</p>
						</div>
					</div>

					@include('partials.similar')

				</div>

			</div>

		</div>
	</div>

	@include('chat.chat')
@endsection
