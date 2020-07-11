<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from demo.hasthemes.com/pullman-preview/pullman/index-5.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 11 Jun 2020 06:53:33 GMT -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Pullman - eCommerce Bootstrap 4 Template</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <base href="{{asset('')}}">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="shop/assets/img/favicon.ico">

    <!-- CSS
	============================================ -->
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,300i,400,400i,600,700,800,900%7CPoppins:300,400,500,600,700,800,900" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="shop/assets/css/vendor/bootstrap.min.css">
    <!-- Font-awesome CSS -->
    <link rel="stylesheet" href="shop/assets/css/vendor/font-awesome.min.css">
    <!-- Slick slider css -->
    <link rel="stylesheet" href="shop/assets/css/plugins/slick.min.css">
    <!-- animate css -->
    <link rel="stylesheet" href="shop/assets/css/plugins/animate.css">
    <!-- Nice Select css -->
    <link rel="stylesheet" href="shop/assets/css/plugins/nice-select.css">
    <!-- jquery UI css -->
    <link rel="stylesheet" href="shop/assets/css/plugins/jqueryui.min.css">
    <!-- main style css -->
    <link rel="stylesheet" href="shop/assets/css/style.css">

</head>

<body>
    <!-- Start Header Area -->
    <header class="header-area header-style__3 header-box header-box__3">
        <!-- main header start -->
        @include('shop.layouts.header')
        @include('shop.layouts.menu')

        <!-- main header start -->

    </header>
    <!-- end Header Area -->


    <main>



        <!-- product gallery area start -->
        @yield('content')
        <!-- product gallery area end -->

    </main>

    <!-- Scroll to top start -->
    <div class="scroll-top not-visible">
        <i class="fa fa-angle-up"></i>
    </div>
    <!-- Scroll to Top End -->


    <!-- footer area start -->
    @include('shop.layouts.footer')
    <!-- footer area end -->

    <!-- JS
============================================ -->
        
    <!-- Modernizer JS -->
    <script src="shop/assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <!-- jQuery JS -->
    <script src="shop/assets/js/vendor/jquery-3.3.1.min.js"></script>
    <!-- Popper JS -->
    <script src="shop/assets/js/vendor/popper.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="shop/assets/js/vendor/bootstrap.min.js"></script>
    <!-- slick Slider JS -->
    <script src="shop/assets/js/plugins/slick.min.js"></script>
    <!-- Countdown JS -->
    <script src="shop/assets/js/plugins/countdown.min.js"></script>
    <!-- Nice Select JS -->
    <script src="shop/assets/js/plugins/nice-select.min.js"></script>
    <!-- jquery UI JS -->
    <script src="shop/assets/js/plugins/jqueryui.min.js"></script>
    <!-- Image zoom JS -->
    <script src="shop/assets/js/plugins/image-zoom.min.js"></script>
    <!-- image loaded js -->
    <script src="shop/assets/js/plugins/imagesloaded.pkgd.min.js"></script>
    <!-- masonry  -->
    <script src="shop/assets/js/plugins/masonry.pkgd.min.js"></script>
    <!-- mailchimp active js -->
    <script src="shop/assets/js/plugins/ajaxchimp.js"></script>
    <!-- contact form dynamic js -->
    <script src="shop/assets/js/plugins/ajax-mail.js"></script>
    <!-- google map api -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>
    <!-- google map active js -->
    <script src="shop/assets/js/plugins/google-map.js"></script>
    <!-- Main JS -->
    <script src="shop/assets/js/main.js"></script>
    <script src="shop/assets/js/cart.js"></script>
    @yield('js')
     <!-- JavaScript -->
    <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

    <!-- CSS -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css" />
    <!-- Default theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css" />
    <!-- Semantic UI theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css" />
    <!-- Bootstrap theme -->
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/bootstrap.min.css" />
</body>


<!-- Mirrored from demo.hasthemes.com/pullman-preview/pullman/index-5.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 11 Jun 2020 06:54:10 GMT -->
</html>
