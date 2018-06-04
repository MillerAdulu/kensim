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

				</div>

			</div>

		</div>

	</div>

	@include('chat.chat')

	<!-- Go to www.addthis.com/dashboard to customize your tools -->
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5b0298288d5ff3b6"></script>
	<!-- Disqus -->
	<div id="disqus_thread" style="margin-left: 5%; margin-right:5%;"></div>
	<script>

        /**
         *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
         *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
        var disqus_config = function () {
            this.page.url = '{{ Request::url() }}';  // Replace PAGE_URL with your page's canonical URL variable
            this.page.identifier = '{{ $post->slug }}'; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
        };
        (function() { // DON'T EDIT BELOW THIS LINE
            var d = document, s = d.createElement('script');
            s.src = 'https://kensim.disqus.com/embed.js';
            s.setAttribute('data-timestamp', + new Date());
            (d.head || d.body).appendChild(s);
        })();
	</script>
	<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
	<script id="dsq-count-scr" src="//kensim.disqus.com/count.js" async></script>

@endsection
