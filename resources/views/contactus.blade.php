@extends ('main')
@section('content')



    <!-- Start contact-info Area -->
    <section class="contact-info-area section-gap">
        <div class="container">
            <div class="row">
                <div class="single-info col-lg-3 col-md-6">
                    <h4><i class="fa fa-building"></i>Visit Our Office</h4>
                    <p>
                        56/8, bir uttam qazi nuruzzaman
                        road, west panthapath, kalabagan,
                        Dhanmondi, Dhaka - 1205
                    </p>
                </div>
                <div class="single-info col-lg-3 col-md-6">
                    <h4>Let’s call us</h4>
                    <p>
                        Phone 01: 012-6532-568-9746 <br>
                        Phone 02: 012-6532-568-9748 <br>
                        FAX: 02-6532-568-746
                    </p>
                </div>
                <div class="single-info col-lg-3 col-md-6">
                    <h4>Let’s Email Us</h4>
                    <p>
                        hello@colorlib.com <br>
                        mainhelpinfo@colorlib.com <br>
                        infohelp@colorlib.com
                    </p>
                </div>
                <div class="single-info col-lg-3 col-md-6">
                    <h4>Customer Support</h4>
                    <p>
                        support@colorlib.com <br>
                        emergencysupp@colorlib.com <br>
                        extremesupp@colorlib.com
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!-- End contact-info Area -->

    <!-- Start Contact Area -->
    <section class="contact-area" id="contact">
        <div class="container-fluid">
            <div class="row align-items-center d-flex justify-content-start">
                <div class="col-lg-6 col-md-12 contact-left no-padding">
                    <div style=" width:100%;
	                height: 545px;" id="map"></div>
                </div>
                <div class="col-lg-4 col-md-12 pt-100 pb-100">
                    <form class="form-area" id="myForm" action="mail.php" method="post" class="contact-form text-right">
                        <input name="fname" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mt-10" required="" type="text">
                        <input name="email" placeholder="Enter email address" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mt-10" required="" type="email">
                        <textarea class="common-textarea mt-10" name="message" placeholder="Messege" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'" required=""></textarea>
                        <button class="primary-btn mt-20">Send Message<span class="lnr lnr-arrow-right"></span></button>
                        <div class="alert-msg">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- End Contact Area -->


@endsection

