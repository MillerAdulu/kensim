@extends('layouts.master')

@section('title', $property->property_name)

@section('customcss')
	<link rel="stylesheet" href="{{ asset('assets/css/lightslider.min.css') }}">
@endsection

@section('content')
	<link rel="stylesheet" href="{{asset('assets/css/lightslider.min.css')}}">
	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">{{ $property->property_name }} </h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area single-property" style="background-color: #FCFCFC;">
		<div class="container">

			<div class="clearfix padding-top-40">
				<div class="col-md-8 single-property-content ">
					<div class="row">
						<div class="light-slide-item">
							<div class="clearfix">
								<div class="favorite-and-print">
									<a class="printer-icon " href="javascript:window.print()">
										<i class="fa fa-print"></i>
									</a>
								</div>
								<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
									@foreach($property->gallery as $image)
										<li data-thumb="{{ Voyager::image( $image ) }}">
											<img src="{{ Voyager::image( $image ) }}"/>
										</li>
									@endforeach
								</ul>
							</div>
						</div>
					</div>

					<div class="single-property-wrapper">
						<div class="single-property-header">
							<h1 class="property-title pull-left">{{ $property->property_name }}</h1>
							<span class="property-price pull-right">KES {{ $property->price }}</span>
						</div>

						<div class="property-meta entry-meta clearfix ">

							<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-tag">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill-rule="evenodd" clip-rule="evenodd" fill="#FFA500" d="M47.199 24.176l-23.552-23.392c-.504-.502-1.174-.778-1.897-.778l-19.087.09c-.236.003-.469.038-.696.1l-.251.1-.166.069c-.319.152-.564.321-.766.529-.497.502-.781 1.196-.778 1.907l.092 19.124c.003.711.283 1.385.795 1.901l23.549 23.389c.221.218.482.393.779.523l.224.092c.26.092.519.145.78.155l.121.009h.012c.239-.003.476-.037.693-.098l.195-.076.2-.084c.315-.145.573-.319.791-.539l18.976-19.214c.507-.511.785-1.188.781-1.908-.003-.72-.287-1.394-.795-1.899zm-35.198-9.17c-1.657 0-3-1.345-3-3 0-1.657 1.343-3 3-3 1.656 0 2.999 1.343 2.999 3 0 1.656-1.343 3-2.999 3z"></path>
                                        </svg>
                                    </span>
								<span class="property-info-entry">
                                        <span class="property-info-label">Status</span>
                                        <span class="property-info-value">For {{ $property->mode == 1 ? 'Rent' : 'Sale' }}</span>
                                    </span>
							</div>

							<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info icon-area">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill="#FFA500" d="M46 16v-12c0-1.104-.896-2.001-2-2.001h-12c0-1.103-.896-1.999-2.002-1.999h-11.997c-1.105 0-2.001.896-2.001 1.999h-12c-1.104 0-2 .897-2 2.001v12c-1.104 0-2 .896-2 2v11.999c0 1.104.896 2 2 2v12.001c0 1.104.896 2 2 2h12c0 1.104.896 2 2.001 2h11.997c1.106 0 2.002-.896 2.002-2h12c1.104 0 2-.896 2-2v-12.001c1.104 0 2-.896 2-2v-11.999c0-1.104-.896-2-2-2zm-4.002 23.998c0 1.105-.895 2.002-2 2.002h-31.998c-1.105 0-2-.896-2-2.002v-31.999c0-1.104.895-1.999 2-1.999h31.998c1.105 0 2 .895 2 1.999v31.999zm-5.623-28.908c-.123-.051-.256-.078-.387-.078h-11.39c-.563 0-1.019.453-1.019 1.016 0 .562.456 1.017 1.019 1.017h8.935l-20.5 20.473v-8.926c0-.562-.455-1.017-1.018-1.017-.564 0-1.02.455-1.02 1.017v11.381c0 .562.455 1.016 1.02 1.016h11.39c.562 0 1.017-.454 1.017-1.016 0-.563-.455-1.019-1.017-1.019h-8.933l20.499-20.471v8.924c0 .563.452 1.018 1.018 1.018.561 0 1.016-.455 1.016-1.018v-11.379c0-.132-.025-.264-.076-.387-.107-.249-.304-.448-.554-.551z"></path>
                                        </svg>
                                    </span>
								<span class="property-info-entry">
                                        <span class="property-info-label">Area</span>
                                        <span class="property-info-value">{{ $property->size }} <b class="property-info-unit">Sq Ft</b></span>
                                    </span>
							</div>

							<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-bed">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill="#FFA500" d="M21 48.001h-19c-1.104 0-2-.896-2-2v-31c0-1.104.896-2 2-2h19c1.106 0 2 .896 2 2v31c0 1.104-.895 2-2 2zm0-37.001h-19c-1.104 0-2-.895-2-1.999v-7.001c0-1.104.896-2 2-2h19c1.106 0 2 .896 2 2v7.001c0 1.104-.895 1.999-2 1.999zm25 37.001h-19c-1.104 0-2-.896-2-2v-31c0-1.104.896-2 2-2h19c1.104 0 2 .896 2 2v31c0 1.104-.896 2-2 2zm0-37.001h-19c-1.104 0-2-.895-2-1.999v-7.001c0-1.104.896-2 2-2h19c1.104 0 2 .896 2 2v7.001c0 1.104-.896 1.999-2 1.999z"></path>
                                        </svg>
                                    </span>
								<span class="property-info-entry">
                                        <span class="property-info-label">Bedrooms</span>
                                        <span class="property-info-value">{{ $property->Bedrooms }}</span>
                                    </span>
							</div>

							<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-bath">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">
                                        <path class="meta-icon" fill="#FFA500" d="M37.003 48.016h-4v-3.002h-18v3.002h-4.001v-3.699c-4.66-1.65-8.002-6.083-8.002-11.305v-4.003h-3v-3h48.006v3h-3.001v4.003c0 5.223-3.343 9.655-8.002 11.305v3.699zm-30.002-24.008h-4.001v-17.005s0-7.003 8.001-7.003h1.004c.236 0 7.995.061 7.995 8.003l5.001 4h-14l5-4-.001.01.001-.009s.938-4.001-3.999-4.001h-1s-4 0-4 3v17.005000000000003h-.001z"></path>
                                        </svg>
                                    </span>
								<span class="property-info-entry">
                                        <span class="property-info-label">Bathrooms</span>
                                        <span class="property-info-value">{{ $property->Bathrooms }}</span>
                                    </span>
							</div>

							<div class="col-xs-3 col-sm-3 col-md-3 p-b-15">
                                    <span class="property-info-icon icon-location">
                                        {{--<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 48 48">--}}
										{{--<path class="meta-icon" fill="#FFA500" d="M44 0h-40c-2.21 0-4 1.791-4 4v44h6v-40c0-1.106.895-2 2-2h31.999c1.106 0 2.001.895 2.001 2v40h6v-44c0-2.209-1.792-4-4-4zm-36 8.001h31.999v2.999h-31.999zm0 18h6v5.999h-2c-1.104 0-2 .896-2 2.001v6.001c0 1.103.896 1.998 2 1.998h2v2.001c0 1.104.896 2 2 2s2-.896 2-2v-2.001h11.999v2.001c0 1.104.896 2 2.001 2 1.104 0 2-.896 2-2v-2.001h2c1.104 0 2-.895 2-1.998v-6.001c0-1.105-.896-2.001-2-2.001h-2v-5.999h5.999v-3h-31.999v3zm8 12.999c-1.104 0-2-.895-2-1.999s.896-2 2-2 2 .896 2 2-.896 1.999-2 1.999zm10.5 2h-5c-.276 0-.5-.225-.5-.5 0-.273.224-.498.5-.498h5c.275 0 .5.225.5.498 0 .275-.225.5-.5.5zm1-2h-7c-.275 0-.5-.225-.5-.5s.226-.499.5-.499h7c.275 0 .5.224.5.499s-.225.5-.5.5zm-6.5-2.499c0-.276.224-.5.5-.5h5c.275 0 .5.224.5.5s-.225.5-.5.5h-5c-.277 0-.5-.224-.5-.5zm11 2.499c-1.104 0-2.001-.895-2.001-1.999s.896-2 2.001-2c1.104 0 2 .896 2 2s-.896 1.999-2 1.999zm0-12.999v5.999h-16v-5.999h16zm-24-13.001h31.999v3h-31.999zm0 5h31.999v3h-31.999z"></path>--}}
										{{--</svg>--}}
                                    </span>
								<span class="property-info-entry">
                                        <span class="property-info-label">Location</span>
                                        <span class="property-info-value">{{ $property->location }}</span>
                                    </span>
							</div>


						</div>
						<!-- .property-meta -->

						<div class="section">
							<h4 class="s-property-title">Description</h4>
							<div class="s-property-content">
								<p>{{ $property->description }}</p>
							</div>
						</div>
						<!-- End description area  -->

						<div class="section additional-details">

							<h4 class="s-property-title">Additional Details</h4>

							<ul class="additional-details-list clearfix">
								<li>
									<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Type</span>
									<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">
                                        @foreach($types as $type)
                                        @if($type->id == $property->property_type)
                                            {{ $type->property_type }}
                                        @endif
                                        @endforeach
                                    </span>
								</li>

								<li>
									<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Listed In</span>
									<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">{{ $property->created_at->year }}</span>
								</li>
								<li>
									<span class="col-xs-6 col-sm-4 col-md-4 add-d-title">Parking</span>
									<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">2 Or More Spaces,Covered Parking,Valet Parking</span>
								</li>

							</ul>
						</div>
						<!-- End additional-details area  -->

						<div class="section property-features">

							<h4 class="s-property-title">Features</h4>
							<ul>
								<li><a href="#">Swimming Pool</a></li>
								<li><a href="#">3 Stories</a></li>
								<li><a href="#">Central Cooling</a></li>
								<li><a href="#">Jog Path 2</a></li>
								<li><a href="#">2 Lawn</a></li>
								<li><a href="#">Bike Path</a></li>
							</ul>

						</div>
						<!-- End features area  -->
						<div id="map">
							{!! Mapper::render() !!}
						</div>
					</div>
				</div>

				<div class="col-md-4 p0">
					<aside class="sidebar sidebar-property blog-asside-right">

						@include('partials.agent')

						@include('partials.similar')

						@include('search.advancedsearch')

					</aside>
				</div>
			</div>

		</div>


		<!-- Disqus -->
		<div id="disqus_thread" style="margin-left: 5%; margin-right:5%;"></div>
		<script>

            /**
             *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
             *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
            const disqus_config = function () {
                this.page.url = '{{ Request::url() }}';  // Replace PAGE_URL with your page's canonical URL variable
                this.page.identifier = '{{ $property->id }}'; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
            };
            (function() { // DON'T EDIT BELOW THIS LINE
                const d = document, s = d.createElement('script');
                s.src = 'https://kensim.disqus.com/embed.js';
                s.setAttribute('data-timestamp', + new Date());
                (d.head || d.body).appendChild(s);
            })();
		</script>
		<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
		<script id="dsq-count-scr" src="//kensim.disqus.com/count.js" async></script>

	</div>


	@include('chat.chat')

@endsection

@section('customjs')
	<script type="text/javascript" src="{{asset('assets/js/lightslider.min.js')}}"></script>
	<script>
        $(document).ready(function () {

            $('#image-gallery').lightSlider({
                gallery: true,
                item: 1,
                thumbItem: 9,
                slideMargin: 0,
                speed: 500,
                auto: true,
                loop: true,
                onSliderLoad: function () {
                    $('#image-gallery').removeClass('cS-hidden');
                }
            });
        });
	</script>
	<!-- Go to www.addthis.com/dashboard to customize your tools -->
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5b0298288d5ff3b6"></script>
	<!-- Disqus -->

	<!-- Go to www.addthis.com/dashboard to customize your tools -->
	<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5b0298288d5ff3b6"></script>

@endsection