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
        <div class="register" id="click_register_m"> <a href="/" class="logo-main"><img src="<?php echo get_field('logo_pages','option')['url'] ?>" class="img-fluid" alt=""></a></div>
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
                <?php while ( has_sub_field('menu_trai','option')) : ?>
                    <?php while ( has_sub_field('menu_c_1','option' )) : ?>
                        <li class="menu-item-has-children">
                            <a href="<?php the_sub_field('link_mn_c1','option') ?>"><?php the_sub_field('ten_menu_cap_1','option') ?></a>
                            <ul>
                                <?php while ( has_sub_field('menu_cap2_left' )) : ?>
                                    <li><a href="<?php the_sub_field('link_menu_cs_left','option') ?>"><?php the_sub_field('ten_menu_c2_left','option') ?></a></li>
                                <?php endwhile; ?> 
                            </ul>
                            <div></div>
                        </li>
                    <?php endwhile; ?>
                <?php endwhile; ?>
                <?php while ( has_sub_field('menu_trai_copy','option')) : ?>
                    <?php while ( has_sub_field('menu_c_1','option' )) : ?>
                        <li class="menu-item-has-children">
                            <a href="<?php the_sub_field('link_mn_c1','option') ?>"><?php the_sub_field('ten_menu_cap_1','option') ?></a>
                            <ul>
                                <?php while ( has_sub_field('menu_cap2_left' )) : ?>
                                    <li><a href="<?php the_sub_field('link_menu_cs_left','option') ?>"><?php the_sub_field('ten_menu_c2_left','option') ?></a></li>
                                <?php endwhile; ?> 
                            </ul>
                            <div></div>
                        </li>
                    <?php endwhile; ?>
                <?php endwhile; ?>
            </ul>
        </nav>
    </div>
    <div class="scroll_top">
        <img class="main" src="<?php echo __BASE_URL__ ?>/images/scroll-top1.png" alt="">
    </div>
    <header id="header-main">
        <div class="right typography">
            <ul class="menu-main">
                <?php while ( has_sub_field('menu_trai','option')) : ?>
                    <?php while ( has_sub_field('menu_c_1','option' )) : ?>
                        <li class="menu-item-has-children">
                            <a href="<?php the_sub_field('link_mn_c1','option') ?>"><?php the_sub_field('ten_menu_cap_1','option') ?></a>
                            <ul class="sub-menu">
                                <?php while ( has_sub_field('menu_cap2_left','option' )) : ?>
                                    <li><a href="<?php the_sub_field('link_menu_cs_left','option') ?>"><img src="<?php echo get_sub_field('icon_menu_left','option')['url'] ?>" class="img-fluid" alt=""><?php the_sub_field('ten_menu_c2_left','option') ?></a></li>
                                <?php endwhile; ?> 
                            </ul>
                            <div></div>
                        </li>
                    <?php endwhile; ?>
                <?php endwhile; ?>

                <li>
                    <div class="logo-head">
                        <a href="/" class="logo-main"><img src="<?php echo get_field('logo_pages','option')['url'] ?>" class="img-fluid" alt=""></a>
                    </div>
                </li>

                <?php while ( has_sub_field('menu_trai_copy','option')) : ?>
                    <?php $check_sub_2 = get_field('menu_cap2_left','option'); ?>
                    <?php if ($check_sub_2 == null): ?>
                        <?php while ( has_sub_field('menu_c_1','option' )) : ?>
                        <li class="menu-item-has-children">
                            <a href="<?php the_sub_field('link_mn_c1','option') ?>"><?php the_sub_field('ten_menu_cap_1','option') ?></a>
                            <ul class="sub-menu">
                                <?php while ( has_sub_field('menu_cap2_left','option' )) : ?>
                                    <li><a href="<?php the_sub_field('link_menu_cs_left','option') ?>"><?php the_sub_field('ten_menu_c2_left','option') ?></a></li>
                                <?php endwhile; ?> 
                            </ul>
                            <div></div>
                        </li>
                    <?php endwhile; ?>
                    <?php endif ?>
                <?php endwhile; ?>
            </ul> 
        </div>

        <div class="soical-main">
            <?php while ( has_sub_field('list_social','option' )) : ?>
                <a href="<?php the_sub_field('link','option') ?>" target="_blank">
                    <?php the_sub_field('icon','option') ?>
                </a>
            <?php endwhile; ?> 
        </div>
        <div class="media-main">
            <div class="icon-play js-btn-live">
                <a href="<?php the_field('link_video','option') ?>">
                    <div class="icon">
                        <img class="main" src="<?php echo __BASE_URL__ ?>/images/play-fix.png" alt="">
                    </div>
                </a>
                <a href="<?php the_field('link_360','option') ?>">
                    <div class="icon">
                        <img class="main frame" src="<?php echo __BASE_URL__ ?>/images/720.png" alt="">
                        <img class="main text" src="<?php echo __BASE_URL__ ?>/images/360.png" alt="">
                    </div>
                </a>
            </div>
        </div>
    </header>