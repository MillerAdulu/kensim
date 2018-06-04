@extends('layouts.master')

@section('title', 'Properties')

@section('customcss')
    <link rel="stylesheet" href="{{ asset('assets/css/lightslider.min.css') }}">
@endsection

@section('content')
    <!-- property area -->
    <div class="properties-area recent-property" style="background-color: #FFF;">
        <div class="container">
            <div class="row">
                <div class="col-md-9 padding-top-40 properties-page">
                    <div class="section clear">
                        <div class="col-xs-10 page-subheader sorting pl0">
                          @include('search.algoliaimage')
                        </div>
                        <div class="col-xs-2 layout-switcher">
                            <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i></a>
                            <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i></a>
                        </div><!--/ .layout-switcher-->

                    </div>

                    <div class="section clear">
                        <div id="list-type" class="proerty-th">

                            @if(count($properties) > 0)
                            @foreach($properties as $property)

                                <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">
                                        <div class="item-thumb">
                                            <a href="/property/{{ $property->id }}" ><img src="{{ Voyager::image($property->thumbnail('view', 'featured_image')) }}"></a>
                                        </div>

                                        <div class="item-entry overflow">
                                            <h5><a href="/property/{{ $property->id }}">{{ $property->property_name }}</a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> Area :</b> {{ $property->size }} Sq Ft </span>
                                            <span class="proerty-price pull-right"> KES {{ strrev(chunk_split(strrev($property->price), 3, ',')) }}</span>
                                            <div class="property-icon">
                                                <img src="{{asset('assets/img/icon/bed.png')}}"> ({{ $property->Bedrooms }})|
                                                <img src="{{asset('assets/img/icon/shawer.png')}}"> ({{ $property->Bathrooms }})
                                            </div>
                                        </div>


                                    </div>
                                </div>

                            @endforeach
                            @else
                                    <div class="box-tree proerty-item more-proerty text-center">
                                        <div class="item-tree-icon">
                                            <i class="fa fa-th"></i>
                                        </div>
                                        <div class="more-entry overflow">
                                            <h5><a href="/property" >NO RESULTS FOUND </a></h5>
                                            <h5 class="tree-sub-ttl">Show all properties</h5>
                                            <a href="/property" class="btn border-btn more-black">All properties</a>
                                        </div>
                                    </div>

                            @endif

                        </div>
                    </div>
                    <div class="section">
                        <div class="pull-right">
                            <div class="pagination">
                                 {{ $properties->links('vendor.pagination.bootstrap-4') }}
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 pl0 padding-top-40">
                    <div class="blog-asside-right pl0">

                        @include('search.advancedsearch')

                    </div>
                </div>
            </div>
        </div>
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
@endsection