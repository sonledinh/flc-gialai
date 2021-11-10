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
                <div class="form-regis">
                    <div class="item-form" data-aos="fade-up"><input type="text" class="txt_field" placeholder="Họ và tên"></div>
                    <div class="item-form" data-aos="fade-up"><input type="text" class="txt_field" placeholder="Điện thoại"></div>
                    <div class="item-form" data-aos="fade-up"><input type="text" class="txt_field" placeholder="Email"></div>
                    <div class="item-form" data-aos="fade-up">
                        <p>Căn hộ bạn quan tâm </p>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="col-regis">
                                    <h3 class="text-uppercase">PHONG SƠN</h3>
                                    <ul>
                                        <li><input type="checkbox" id="2001"><label for="2001">Shophouse</label></li>
                                        <li><input type="checkbox" id="2002"><label for="2002">Mini Hotel</label></li>
                                        <li><input type="checkbox" id="2003"><label for="2003">Biệt thự</label></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="col-regis">
                                    <h3 class="text-uppercase">Song Vũ</h3>
                                    <ul>
                                        <li><input type="checkbox" id="1001"><label for="1001">Biệt thự Đơn lập</label></li>
                                        <li><input type="checkbox" id="1002"><label for="1002">Biệt thự Song lập</label></li>
                                        <li><input type="checkbox" id="1003"><label for="1003">Shopvilla Đơn lập 2,5 tầng</label></li>
                                        <li><input type="checkbox" id="1004"><label for="1004">Shopvilla Đơn lập 3 tầng</label></li>
                                        <li><input type="checkbox" id="1005"><label for="1005">Shopvilla Song lập 2,5 tầng</label></li>
                                        <li><input type="checkbox" id="1006"><label for="1006">Shopvilla Song lập 3 tầng</label></li>
                                        <li><input type="checkbox" id="1007"><label for="1007">Liên kề</label></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="col-regis">
                                    <h3 class="text-uppercase">Trường Vĩ</h3>
                                    <ul>
                                        <li><input type="checkbox" id="3001"><label for="3001">Shophouse</label></li>
                                        <li><input type="checkbox" id="3002"><label for="3002">Mini Hotel</label></li>
                                        <li><input type="checkbox" id="3003"><label for="3003">Biệt thự</label></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="item-form" data-aos="fade-up"><input type="text" class="txt_field" placeholder="Nội dung"></div>
                    <div class="item-form" data-aos="fade-up"><input type="submit" value="GỬI THÔNG TIN" class="btn-regis text-center"></div>
                </div>
            </div>
        </div>
    </section>
</main>

<?php get_footer(); ?>  
