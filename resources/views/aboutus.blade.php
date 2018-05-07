@extends ('layouts.master')

@section('title', 'About Us')

@section('content')

	<link rel="stylesheet" href="{{asset('custom/main.css')}}">
	<link rel="stylesheet" href="{{asset('custom/linearicons.css')}}">

	<link rel="stylesheet" href="{{asset('custom/magnific-popup.css')}}">

	<!-- Start service Area -->
	<section class="service-area section-gap" id="service">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-md-8 pb-40 header-text">
					<h1>Why we are the best</h1>
					<p>
						Kensim holds your hand and guides you through finding your desired home.
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6 pb-30">
					<div class="single-service">
						<h4><span class="lnr lnr-user"></span>Great Team</h4>
						<p>
							Our team is enthusiastic in assisting you to find a home.
						</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 pb-30">
					<div class="single-service">
						<h4><span class="lnr lnr-license"></span>Professional Service</h4>
						<p>
							Our staff are highly trained and have wide span of knowledge in real estate and customer relations.
						</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 pb-30">
					<div class="single-service">
						<h4><span class="lnr lnr-phone"></span>Great Support</h4>
						<p>
							We are always ready to talk to you, call us,email us or talk to us on live chat or on our social media platforms.
						</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service">
						<h4><span class="lnr lnr-rocket"></span>Property</h4>
						<p>
							We offer a wide range of property giving you a chance to choose the one that best fits your needs.
						</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service">
						<h4><span class="lnr lnr-diamond"></span>Tips</h4>
						<p>
							Our blog articles are readily available and are great pointers to what you should look out for as you find a new home.
						</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service">
						<h4><span class="lnr lnr-bubble"></span>Positive Reviews</h4>
						<p>
							We aim at simply giving the best experience to our customers.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End service Area -->

	@include('chat.chat')
@endsection