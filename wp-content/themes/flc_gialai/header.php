<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package flc_gialai
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
    <link href="https://fonts.googleapis.com/css2?family=K2D:wght@200;400;500;800&display=swap" rel="stylesheet">

	<?php wp_head(); ?>

    <script type='text/javascript' src='<?php echo __BASE_URL__ ?>/js/jquery.min.js' id='jquery-core-js'></script>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<!-- <div id="page" class="site">  -->
	
    <div class="menu-mobi">
        <div class="register" id="click_register_m">Đăng ký tư vấn</div>
        <a href="" class="logo-main"></a>
        <div class="" id="hamburger-site">
            <a href="#menu">
                <span></span>
                <span></span>
                <span></span>
            </a>
        </div>
        <div class="coating-main" id="coating-main"></div>
        <nav id="menu">
            <ul>
                <li><a href="index.php" class="active">Trang chủ</a></li>
                <li><a href="">Giới thiệu</a></li>
                <li>
                    <a href="">Sản phẩm</a> 
                    <ul>
                        <li>
                            <a href="phongson.php">Phong Sơn</a>
                        </li>
                        <li>
                            <a href="sanpham.php">Song Vũ</a>
                        </li>
                        <li>
                            <a href="sanpham.php">Trường Vĩ</a>
                        </li>
                    </ul>
                </li>
                <li><a href="news.php">Tin tức</a></li>
                <li>
                    <a href="">Thư viện</a>
                    <ul>
                        <li>
                            <a href="gallery.php">Hình ảnh</a>
                        </li>
                        <li>
                            <a href="video.php">Video</a>
                        </li>
                        <li>
                            <a href="document.php">Tài liệu</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
    <div class="scroll_top">
        <img class="main" src="<?php echo __BASE_URL__ ?>/images/scroll-top1.png" alt="FLC Quảng Bình">
    </div>
    <header id="header-main">
        <div class="right typography">
            <ul class="menu-main">
                <li>
                    <a href="index.php">Trang chủ</a>
                </li>
                <li class="li">
                    <a href="/">Giới thiệu</a>
                </li>
                <li class="menu-item-has-children">
                    <a href="sanpham.php">Sản phẩm</a>
                    <ul class="sub-menu">
                        <li>
                            <a href="phongson.php"><img src="<?php echo __BASE_URL__ ?>/images/mn-1.png" class="img-fluid" alt="">Phong Sơn</a>
                        </li>
                        <li>
                            <a href="sanpham.php"><img src="<?php echo __BASE_URL__ ?>/images/mn-3.png" class="img-fluid" alt="">Song Vũ</a>
                        </li>
                        <li>
                            <a href="sanpham.php"><img src="<?php echo __BASE_URL__ ?>/images/mn-2.png" class="img-fluid" alt="">Trường Vĩ</a>
                        </li>
                    </ul>
                    <div></div>
                </li>
                <li class="li">
                    <div class="logo-head">
                        <a href="index.php" class="logo-main"><img src="<?php echo __BASE_URL__ ?>/images/logo-head.png" class="img-fluid" alt=""></a>
                    </div>
                </li>
                <li class="li">
                    <a href="news.php">Tin tức</a>
                </li>
                <li class="menu-item-has-children">
                    <a href="">Thư viện</a>
                    <ul class="sub-menu">
                        <li>
                            <a href="gallery.php">Hình ảnh</a>
                        </li>
                        <li>
                            <a href="video.php">Video</a>
                        </li>
                        <li>
                            <a href="document.php">Tài liệu</a> 
                        </li>
                    </ul>
                    <div></div>
                </li>
                <li class="li">
                    <a href="">Đăng ký tư vấn</a>
                </li>
            </ul>
        </div>

        <div class="soical-main">
            <a href="#" target="_blank">
                <svg xmlns="http://www.w3.org/2000/svg" width="15" height="27" viewBox="0 0 15 27" fill="none">
                    <path d="M14 1H10.4545C8.88736 1 7.38436 1.65848 6.27619 2.83058C5.16802 4.00269 4.54545 5.5924 4.54545 7.25V11H1V16H4.54545V26H9.27273V16H12.8182L14 11H9.27273V7.25C9.27273 6.91848 9.39724 6.60054 9.61887 6.36612C9.84051 6.1317 10.1411 6 10.4545 6H14V1Z" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path>
                </svg>
            </a>
            <a href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="16" viewBox="0 0 20 16" fill="none">
                    <path d="M2.73564 1.08057H17.9098C18.6769 1.08057 19.3066 1.71026 19.3066 2.47734V13.858C19.3066 14.6251 18.6769 15.2548 17.9098 15.2548H2.73564C1.96856 15.2548 1.33887 14.6251 1.33887 13.858V2.47734C1.33887 1.71026 1.96856 1.08057 2.73564 1.08057Z" stroke="white"></path>
                    <mask id="path-2-inside-1" fill="white">
                    <path d="M19.8066 2.47705L10.3227 9.11576L0.838867 2.47705"></path>
                    </mask>
                    <path d="M10.3227 9.11576L9.74928 9.93499L10.3227 10.3364L10.8962 9.93499L10.3227 9.11576ZM19.2331 1.65782L9.74928 8.29653L10.8962 9.93499L20.3801 3.29628L19.2331 1.65782ZM10.8962 8.29653L1.41233 1.65782L0.265405 3.29628L9.74928 9.93499L10.8962 8.29653Z" fill="white" mask="url(#path-2-inside-1)"></path>
                </svg>
            </a>
            <a href="tel:0964150069">
                <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 22 22" fill="none">
                    <path d="M13.388 4.82261C14.3232 5.00472 15.1827 5.46123 15.8565 6.1337C16.5302 6.80617 16.9876 7.66402 17.1701 8.59743M13.388 1C15.331 1.21544 17.1429 2.08388 18.5261 3.46272C19.9093 4.84157 20.7817 6.64887 21 8.58788M20.0425 16.214V19.0809C20.0436 19.3471 19.989 19.6105 19.8821 19.8544C19.7753 20.0983 19.6186 20.3172 19.4221 20.4971C19.2256 20.677 18.9937 20.814 18.7411 20.8993C18.4885 20.9845 18.2208 21.0162 17.9552 20.9922C15.0089 20.6727 12.1787 19.6678 9.69214 18.0584C7.37869 16.5911 5.4173 14.6335 3.94724 12.3245C2.32908 9.83138 1.32206 6.99289 1.00777 4.03897C0.983845 3.7747 1.01531 3.50836 1.10017 3.25689C1.18503 3.00543 1.32141 2.77435 1.50065 2.57838C1.67989 2.3824 1.89804 2.22582 2.14123 2.11861C2.38442 2.0114 2.64731 1.9559 2.91316 1.95565H5.78561C6.25028 1.95109 6.70076 2.11532 7.05309 2.41774C7.40541 2.72016 7.63554 3.14013 7.70057 3.59937C7.82181 4.51686 8.04665 5.41772 8.37081 6.28476C8.49963 6.62681 8.52751 6.99855 8.45115 7.35593C8.37478 7.71331 8.19737 8.04135 7.93994 8.30118L6.72394 9.51486C8.08697 11.9074 10.0717 13.8883 12.4688 15.2488L13.6848 14.0351C13.9452 13.7782 14.2738 13.6011 14.6319 13.5249C14.99 13.4486 15.3624 13.4765 15.7051 13.6051C16.5738 13.9286 17.4764 14.153 18.3956 14.274C18.8608 14.3395 19.2855 14.5733 19.5892 14.931C19.8928 15.2887 20.0542 15.7453 20.0425 16.214Z" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path>
                </svg>
            </a>
        </div>
        <div class="media-main">
            <div class="icon-play js-btn-live">
                <a>
                    <div class="icon">
                        <img class="main" src="<?php echo __BASE_URL__ ?>/images/play-fix.png" alt="">
                    </div>
                </a>
                <a href="#">
                    <div class="icon">
                        <img class="main frame" src="<?php echo __BASE_URL__ ?>/images/720.png" alt="">
                        <img class="main text" src="<?php echo __BASE_URL__ ?>/images/360.png" alt="">
                    </div>
                </a>
            </div>
        </div>
    </header>