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
				@include('search.algoliaimage')
				<div class="blog-lst col-md-9">

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

						<div class="section">
							<div class="pull-right">
								<div class="pagination">
									{{ $posts->links('vendor.pagination.bootstrap-4') }}
								</div>
							</div>
						</div>
				</div>
				<div class="blog-asside-right col-md-3">
					<div class="panel panel-default sidebar-menu wow fadeInRight animated" >
						<div class="panel-heading">
							<h3 class="panel-title">Property Quote</h3>
						</div>
						<div class="panel-body text-widget">
							<p>“Real estate cannot be lost or stolen, nor can it be carried away. Purchased with common sense, paid for in full, and managed with reasonable care, it is about the safest investment in the world.”



								Franklin D. Roosevelt.
							</p>

						</div>
					</div>

					<div class="panel panel-default sidebar-menu wow  fadeInRight animated">
						<div class="panel-heading">
							<h3 class="panel-title">Search Blog</h3>
						</div>
						<div class="panel-body">
							{!! Form::open(['url' => '/blog/search', 'role' => 'search']) !!}
							<div class="input-group">
								{!! Form::text('search_item', '', ['class' => 'form-control', 'placeholder' => 'Search']) !!}
								<span class="input-group-btn">
									<button type="submit" class="btn btn-smal">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div>
							{!! Form::close() !!}

						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	@include('chat.chat')

@endsection