<?php /* Template Name: Tin tức */ ?>
<?php get_header(); ?>


<?php 
    $args=array(
        'post_type' => 'post',
        'orderby'   => 'publish_date',
        'order'     => 'DESC',
        'paged'     => get_query_var('paged') ? get_query_var('paged') : 1,
        'posts_per_page' => 8,
    );
    $my_query = new wp_query($args);
    $max_num_pages = $my_query->max_num_pages;
?>

<main id="cate-body">
    <section class="banner-bread">
        <div class="avarta-bread"><img src="<?php echo get_field('banner_news')['url'] ?>" class="img-fluid w-100" alt=""></div>
        <div class="caption-bread">
            <div class="container-fluid">
                <div class="info-bread text-uppercase">
                    <p>Tin tức</p>
                </div> 
            </div>
        </div>
    </section>
    <section class="box-list-cate">
        <div class="container-fluid">
            <div class="list-col">
                <div class="row">
                    <div class="col-md-12">
                        <div class="head-cate-title">
                            <h2><?php the_field('title_news_cate') ?></h2>
                            <div class="desc">
                                <?php the_field('sort_news_cate') ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 text-right">
                        <div class="fillter-cate">
                            <ul>
                                <li><span>Năm:</span></li>
                                <li>
                                    <select>
                                        <option value="">2021</option>
                                        <option value="">2020</option>
                                        <option value="">2019</option>
                                        <option value="">2018</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <?php if ( $my_query->have_posts() ): ?>
                        <?php while ($my_query->have_posts()):$my_query->the_post(); ?>
                            <div class="col-md-4">
                                <div class="item-cate">
                                    <div class="avarta">
                                        <a href="<?php echo get_the_permalink() ?>"><img src="<?php echo get_the_post_thumbnail_url() ?>" class="img-fluid w-100" alt=""></a>
                                    </div>
                                    <div class="info">
                                        <h3><a href="<?php echo get_the_permalink() ?>"><?php echo get_the_title(); ?></a></h3>
                                    </div>
                                </div>
                            </div>
                            <!-- <div class="left" data-aos="fade-rigth">
                                <a href="<?php echo get_the_permalink() ?>" class="swiper-slide" style="background-image: url('<?php echo get_the_post_thumbnail_url() ?>')">
                                    <div class="content">
                                        <div class="title"><?php echo get_the_title(); ?></div>
                                        <p class="see-more">Xem thêm <img src="<?php echo __BASE_URL__ ?>/images/right-white.svg" class="img-fluid" alt=""></p>
                                    </div>
                                </a>
                            </div> -->
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
        </div>
    </section>
</main>

<?php get_footer(); ?>  
