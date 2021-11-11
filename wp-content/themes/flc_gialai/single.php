<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package flc_gialai
 */

get_header();
?>

<main id="cate-body">
    <section class="banner-bread">
        <div class="avarta-bread"><img src="<?php echo __BASE_URL__ ?>/images/bg-video.jpg" class="img-fluid w-100" alt=""></div>
        <div class="caption-bread">
            <div class="container-fluid">
                <div class="info-bread text-uppercase">
                    <p>Tin tức </p>
                </div>
            </div>
        </div>
    </section>
    <section class="box-detail">
        <div class="page-news-detail">
          <div class="content-page pb-0">
            <div class="left">
              <div class="head-cate-title pt-0">
                    <h2><?php echo get_the_title() ?></h2>
                </div>
              <div class="the-content">
                <?php echo the_content() ?>
              </div>
            </div>
            <div class="right">
            	<?php 
                    $args=array(
                        'post_type' => 'post',
                        'post__not_in' => array(get_the_ID()),
                        'orderby'   => 'rand',
                        'posts_per_page' => 3,
                    );
                    $my_query = new wp_query($args);
                    $max_num_pages = $my_query->max_num_pages;
                ?>

                <?php if ( $my_query->have_posts() ): ?>
                    <?php while ($my_query->have_posts()):$my_query->the_post(); ?>
                    	<a href="<?php the_permalink() ?>" class="item">
			                <div class="img">
			                  <div class="img_scale" style="background-image: url('<?php the_post_thumbnail_url() ?>')"></div>
			                </div>
			                <div class="title_item"><?php the_title(); ?></div>
			                <div class="see-more">
			                    Xem thêm
			                    <svg width="20" height="20" viewBox="0 0 30 29" fill="none" xmlns="http://www.w3.org/2000/svg">
			                        <path d="M2.71045 14.2133C2.71045 16.6467 3.43203 19.0254 4.78393 21.0487C6.13584 23.0719 8.05736 24.6489 10.3055 25.5801C12.5536 26.5113 15.0274 26.7549 17.414 26.2802C19.8006 25.8055 21.9929 24.6337 23.7135 22.9131C25.4342 21.1924 26.606 19.0002 27.0807 16.6136C27.5554 14.2269 27.3118 11.7532 26.3806 9.50502C25.4494 7.25688 23.8724 5.33536 21.8491 3.98346C19.8259 2.63155 17.4471 1.90997 15.0138 1.90997C11.7507 1.90997 8.62133 3.20621 6.31401 5.51353C4.00669 7.82085 2.71045 10.9503 2.71045 14.2133ZM7.9833 13.3345H18.6608L13.7571 8.40701L15.0138 7.18283L22.0442 14.2133L15.0138 21.2438L13.7571 19.9897L18.6608 15.0921H7.9833V13.3345Z" fill="#333333"/>
			                    </svg>
			                </div>
			            </a>
                    <?php endwhile ?>
                <?php endif;wp_reset_query(); ?>
            </div>
          </div>
        </div>
    </section>
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
    </section>
</main>

<?php
get_footer();
