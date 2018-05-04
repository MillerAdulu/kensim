@extends('main')

@section('content')
    <div class="slider-area">
        <div class="slider">
            <div id="bg-slider" class="owl-carousel owl-theme">

                <div class="item"><img src="assets/img/slide1/slider-image-1.jpg" alt="Mirror Edge"></div>
                <div class="item"><img src="assets/img/slide1/slider-image-2.jpg" alt="The Last of us"></div>
                <div class="item"><img src="assets/img/slide1/slider-image-4.jpg" alt="GTA V"></div>

            </div>
        </div>
        <div class="container slider-content">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                    <h2>property Searching Just Easier</h2>
--                     <div class="" data-wow-delay="0.8s">


                                <input type="text"align="center" class="form-control" placeholder="Search">
                        </form>
                            </div>
                            <button class="btn search-btn" type="submit"><i class="fa fa-search"></i></button>
                                    <!-- End of  -->

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
                    <div class="col-sm-6 col-md-3 p0">
                        <div class="box-two proerty-item">
                            <div class="item-thumb">
                                <a href="property-1.html" ><img src="assets/img/demo/property-1.jpg"></a>
                            </div>
                            <div class="item-entry overflow">
                                <h5><a href="property-1.html" >Super nice villa </a></h5>
                                <div class="dot-hr"></div>
                                <span class="pull-left"><b>Area :</b> 120m </span>
                                <span class="proerty-price pull-right">$ 300,000</span>
                            </div>
                        </div>
                    </div>


                    <div class="col-sm-6 col-md-3 p0">
                        <div class="box-tree more-proerty text-center">
                            <div class="item-tree-icon">
                                <i class="fa fa-th"></i>
                            </div>
                            <div class="more-entry overflow">
                                <h5><a href="property-1.html" >CAN'T DECIDE ? </a></h5>
                                <h5 class="tree-sub-ttl">Show all properties</h5>
                                <a href="" class="btn border-btn more-black btn-link">All properties</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


@endsection