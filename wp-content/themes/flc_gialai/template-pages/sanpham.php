<?php /* Template Name: Sản phẩm */ ?>
<?php get_header(); ?>

<main id="cate-body">
    <div id="content" class="site-content">
        <div class="landing-ocean typography">
          <section class="ocean_section1">
            <img class="image" src="<?php echo get_field('avr_banner')['url'] ?>" class="img-fluid w-100" alt="">
          </section>
          <section class="ocean_section2" id="_01">
            <?php $i_sp = 0; ?>
            <?php while ( has_sub_field('list_content' )) : ?>
                <?php $i_sp++ ?>
                <?php if ($i_sp == 1): ?>
                    <img class="decor1" src="http://flcquangbinh.vn/wp-content/themes/main/assets/images/ocean/s2-decor2.png" alt="">
                    <div class="left">
                      <div class="title" data-aos="fade-left" data-aos-delay="100">
                        <p><?php the_sub_field('title_content') ?></p>
                      </div>
                      <div class="content" data-aos="fade-right" data-aos-delay="100">
                        <?php the_sub_field('desc_sort_content') ?>
                      </div>
                    </div>
                    <div class="right">
                      <img class="img1" data-aos="zoom-out" data-aos-delay="300" src="<?php echo __BASE_URL__ ?>/images/ps-1.png" class="img-fluid" alt="">
                      <img class="img2" data-aos="zoom-in" data-aos-delay="200" src="<?php echo __BASE_URL__ ?>/images/ps-2.png" alt="" style="opacity: 0;">
                    </div>
                <?php endif ?>
            <?php endwhile; ?>
          </section>

          <section class="ocean_section3">
            <?php $i_sp_count = 0; ?>
            <?php $i_div_count = 1; ?>
            <?php $i_id_count = 1; ?>
            <?php while ( has_sub_field('list_content' )) : ?>
                <?php $i_sp_count++ ?>
                <?php if ($i_sp_count >= 2): ?>
                    <div class="apartment-item type<?php echo $i_div_count++?>" id="_0<?php echo $i_id_count++?>">
                      <div class="left">
                        <div class="title mobi" data-aos="fade-right"><?php the_sub_field('title_content') ?></div>
                        <img class="image" data-aos="zoom-in" src="<?php echo get_sub_field('avr_content')['url'] ?>" class="img-fluid" alt="">
                      </div>
                      <div class="right">
                        <div class="title" data-aos="fade-right"><?php the_sub_field('title_content') ?></div>
                        <div class="content" data-aos="fade-left">
                          <?php the_sub_field('desc_sort_content') ?>
                        </div>
                      </div>
                    </div>
                <?php endif ?>
            <?php endwhile; ?>
          </section>

          <section class="ocean_section4" id="_05">
            <div class="avr-sodo text-center"><img src="<?php echo get_field('avar_tienich')['url'] ?>" class="img-fluid" alt=""></div>
          </section>
          <section class="ocean_section5">
            <div class="title_ocean_def" data-aos="fade-up"> Ảnh tiện ích </div>
            <div class="content" data-aos="fade-up">
              <div class="decor">
                <img src="<?php echo __BASE_URL__ ?>/images/tienich-1.png" class="img-fluid" alt="">
              </div>
              <div class="list_img">
                <?php
                    $i_slide_count = 1;
                ?>
                <?php while ( has_sub_field('slide_gall' )) : ?>
                    <img data-slide="<?php echo $i_slide_count++ ?>" class="<?php echo $i_slide_count == 2 ? 'active' : null; ?>" src="<?php echo get_sub_field('avr_slide')['url'] ?>" alt="">
                <?php endwhile; ?>
              </div>
            </div> 
            <div class="slide_absolute" data-aos="fade-up">
              <div class="btn_next swiper-button-next">
                <img src="<?php echo __BASE_URL__ ?>/images/next.png" alt="">
              </div>
              <div class="btn_prev swiper-button-prev">
                <img src="<?php echo __BASE_URL__ ?>/images/next.png" alt="">
              </div>
              <div class="swiper-container">
                <div class="swiper-wrapper">.
                    <?php
                        $i_slide = 1;
                    ?>
                    <?php while ( has_sub_field('slide_gall' )) : ?>
                        <div class="swiper-slide" data-index="<?php echo $i_slide++ ?>">
                            <div class="decor">
                              <img src="<?php echo __BASE_URL__ ?>/images/small-tienich.png" alt="">
                            </div>
                            <img src="<?php echo get_sub_field('avr_slide')['url'] ?>" alt="">
                        </div>
                    <?php endwhile; ?>
                </div>
              </div>
            </div>
          </section>
          <script>
            jQuery(document).ready(function($) {
              var slide_absolute = new Swiper('.slide_absolute .swiper-container', {
                speed: 1200,
                loop: true,
                slidesPerView: 'auto',
                spaceBetween: 0,
                effect: 'fade',
                fadeEffect: {
                  crossFade: true
                },
                autoplay: {
                  delay: 3000,
                },
                navigation: {
                  nextEl: ".slide_absolute .swiper-button-next",
                  prevEl: ".slide_absolute .swiper-button-prev",
                },
              });
              slide_absolute.on('slideChange', function() {
                $(".western_section5 .content .list_img img").removeClass("active");
                slide_absolute.update();
                var num2 = $('.western_section5 .slide_absolute .swiper-container').find(".swiper-slide-active").attr("data-index");
                $('[data-slide = "' + num2 + '"]').addClass("active");
              });
            });
          </script>
          <section class="ocean_section6" id="_06">
            <div class="title_ocean_def"> Tin tức </div>

            <?php 
                $args=array(
                    'post_type' => 'post',
                    'orderby'   => 'publish_date',
                    'order'     => 'DESC',
                    'paged'     => get_query_var('paged') ? get_query_var('paged') : 1,
                    'posts_per_page' => 10,
                );
                $my_query = new wp_query($args);
                $max_num_pages = $my_query->max_num_pages;
            ?>

            <div class="content_ss">
                <?php $i = 0; ?>
                <?php if ( $my_query->have_posts() ): ?>
                    <?php while ($my_query->have_posts()):$my_query->the_post(); ?>
                        <?php $i++ ?>
                        <?php if ($i == 1): ?>
                            <a href="<?php echo get_the_permalink() ?>" class="left">
                                <div class="img" style="background-image: url('<?php echo get_the_post_thumbnail_url() ?>')">
                                  <div class="decor">
                                    <img src="<?php echo __BASE_URL__ ?>/images/ocean/decor_news.png" alt="">
                                  </div>
                                </div>
                                <div class="title"> <?php echo get_the_title(); ?></div>
                                <p class="see-more">Khám phá thêm <span></span>
                                </p>
                            </a>
                        <?php endif ?>
                    <?php endwhile ?>
                <?php endif;wp_reset_query(); ?>
              <div class="right">
                <div class="swiper-container">
                  <div class="swiper-wrapper">
                    <?php $i_news = 0; ?>
                        <?php if ( $my_query->have_posts() ): ?>
                            <?php while ($my_query->have_posts()):$my_query->the_post(); ?>
                                <?php $i_news++ ?>
                                <?php if ($i_news >= 2): ?>
                                    <a href="<?php echo get_the_permalink() ?>" class="swiper-slide">
                                      <div class="img" style="background-image: url('<?php echo get_the_post_thumbnail_url() ?>')">
                                        <div class="decor">
                                          <img src="<?php echo __BASE_URL__ ?>/images/ocean/decor_news.png" alt="">
                                        </div>
                                      </div>
                                      <div class="content">
                                        <div class="title"><?php echo get_the_title(); ?></div>
                                        <p class="see-more">Khám phá thêm <span></span>
                                        </p>
                                      </div>
                                    </a>
                                <?php endif ?>
                            <?php endwhile ?>
                        <?php endif;wp_reset_query(); ?>
                  </div>
                  <div class="swiper-pagination pagination_slide_def"></div>
                </div>
              </div>
            </div>
          </section>
          <script>
            jQuery(document).ready(function($) {
              var blue_section6 = new Swiper('.ocean_section6 .swiper-container', {
                speed: 800,
                speed: 1000,
                slidesPerView: 1,
                slidesPerColumn: 2,
                slidesPerColumnFill: 'row',
                slidesPerGroup: 1,
                spaceBetween: 10,
                grabCursor: true,
                loop: false,
                pagination: {
                  clickable: true,
                  el: '.ocean_section6 .swiper-container .swiper-pagination',
                },
                breakpoints: {
                  769: {
                    spaceBetween: 15,
                  },
                  1025: {
                    spaceBetween: 25,
                  },
                }
              });
            });
          </script>
            <section>
                <div class="container">
                    <div class="title-regis text-center">ĐĂNG KÝ TƯ VẤN</div>
                </div>
            </section>
            <section class="box-register" style="background: url('<?php echo __BASE_URL__ ?>/images/bg-form.png') no-repeat center;background-size: cover;">
            <div class="container">
                <div class="content-regis">
                    <?php echo do_shortcode('[contact-form-7 id="190" title="Đăng ký tư vấn"]'); ?>
                </div>
            </div>
        </section>
        </div>
    </div>
</main>
<?php get_footer(); ?>  
