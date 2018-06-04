@extends('layouts.master')

@section('title', 'Home')

@section('content')
    <div class="slider-area">
        <div class="slider">
            <div id="bg-slider" class="owl-carousel owl-theme">

                <div class="item"><img src="{{asset('assets/img/slide1/slider-image-1.jpg')}}" alt="Mirror Edge"></div>
                <div class="item"><img src="{{asset('assets/img/slide1/slider-image-2.jpg')}}" alt="The Last of us"></div>
                <div class="item"><img src="{{asset('assets/img/slide1/slider-image-4.jpg')}}" alt="GTA V"></div>

            </div>
        </div>
        <div class="container slider-content">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                    <h2>property Searching Made Easier</h2>
                        {!! Form::open(['url' => '/property/search']) !!}

                        <div class="" data-wow-delay="0.8s">
                            {!! Form::text('search_item', '', ['class' => 'form-control', 'placeholder' => 'Search', 'align' => 'center']) !!}
                        </div>

                        <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>
                        {!! Form::close() !!}
                </div>

            </div>

        </div>
    </div>

    <!-- property area -->
    <div class="content-area recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                    <!-- /.feature title -->
                    <h2>Top properties</h2>

                </div>
            </div>

            <div class="row">
                <div class="proerty-th">
                    @foreach($properties as $property)
                    <div class="col-sm-6 col-md-3 p0">
                        <div class="box-two proerty-item">
                            <div class="item-thumb">
                                <a href="/property/{{ $property->id }}" ><img src="{{asset('assets/img/demo/property-1.jpg')}}"></a>
                            </div>
                            <div class="item-entry overflow">
                                <h5><a href="/property/{{ $property->id }}" >{{ $property->property_name }}</a></h5>
                                <div class="dot-hr"></div>
                                <span class="pull-left"><b>Area :</b> {{ $property->size }} ft </span>
                                <span class="proerty-price pull-right">KES {{ $property->price }}</span>
                            </div>
                        </div>
                    </div>
                    @endforeach

                    <div class="col-sm-6 col-md-3 p0">
                        <div class="box-tree proerty-item more-proerty text-center">
                            <div class="item-tree-icon">
                                <i class="fa fa-th"></i>
                            </div>
                            <div class="more-entry overflow">
                                <h5><a href="/property" >CAN'T DECIDE ? </a></h5>
                                <h5 class="tree-sub-ttl">Show all properties</h5>
                                <a href="/property" class="btn border-btn more-black">All properties</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!--TESTIMONIALS -->
    <div class="testimonial-area recent-property" style="background-color: #FCFCFC; padding-bottom: 15px;">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                    <!-- /.feature title -->
                    <h2>Our Customers Said  </h2>
                </div>
            </div>

            <div class="row">
                <div class="row testimonial">
                    <div class="col-md-12">
                        <div id="testimonial-slider">
                            <div class="item">
                                <div class="client-text">
                                    <p>Nulla quis dapibus nisl. Suspendisse llam sed arcu ultried arcu ultricies !</p>
                                    <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                </div>
                                <div class="client-face wow fadeInRight" data-wow-delay=".9s">
                                    <img src="assets/img/client-face1.png" alt="">
                                </div>
                            </div>
                            <div class="item">
                                <div class="client-text">
                                    <p>Nulla quis dapibus nisl. Suspendisse llam sed arcu ultried arcu ultricies !</p>
                                    <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                </div>
                                <div class="client-face">
                                    <img src="assets/img/client-face2.png" alt="">
                                </div>
                            </div>
                            <div class="item">
                                <div class="client-text">
                                    <p>Nulla quis dapibus nisl. Suspendisse llam sed arcu ultried arcu ultricies !</p>
                                    <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                </div>
                                <div class="client-face">
                                    <img src="assets/img/client-face1.png" alt="">
                                </div>
                            </div>
                            <div class="item">
                                <div class="client-text">
                                    <p>Nulla quis dapibus nisl. Suspendisse llam sed arcu ultried arcu ultricies !</p>
                                    <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                </div>
                                <div class="client-face">
                                    <img src="assets/img/client-face2.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Count area -->
    <div class="count-area">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                    <!-- /.feature title -->
                    <h2>You can trust Us </h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-xs-12 percent-blocks m-main" data-waypoint-scroll="true">
                    <div class="row">
                        <div class="col-sm-3 col-xs-6">
                            <div class="count-item">
                                <div class="count-item-circle">
                                    <span class="pe-7s-users"></span>
                                </div>
                                <div class="chart" data-percent="5000">
                                    <h2 class="percent" id="counter">0</h2>
                                    <h5>HAPPY CUSTOMER </h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-6">
                            <div class="count-item">
                                <div class="count-item-circle">
                                    <span class="pe-7s-home"></span>
                                </div>
                                <div class="chart" data-percent="12000">
                                    <h2 class="percent" id="counter1">0</h2>
                                    <h5>Properties in stock</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-6">
                            <div class="count-item">
                                <div class="count-item-circle">
                                    <span class="pe-7s-flag"></span>
                                </div>
                                <div class="chart" data-percent="120">
                                    <h2 class="percent" id="counter2">0</h2>
                                    <h5>City registered </h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-6">
                            <div class="count-item">
                                <div class="count-item-circle">
                                    <span class="pe-7s-graph2"></span>
                                </div>
                                <div class="chart" data-percent="5000">
                                    <h2 class="percent"  id="counter3">5000</h2>
                                    <h5>DEALER BRANCHES</h5>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    @include('chat.chat')
@endsection