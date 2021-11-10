<?php /* Template Name: Trang chủ */ ?>
<?php get_header(); ?>

<div id="content" class="site-content">
    <div class="home-page typography">
        <section class="h_section1">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <?php while ( has_sub_field('slide_banner' )) : ?>
                    	<div class="swiper-slide">
	                        <img src="<?php echo get_sub_field('avar_banner')['url']; ?>" class="img-fluid w-100" alt="">
	                    </div>
					<?php endwhile; ?>
                </div>
            </div>
            <div class="swiper-pagination pagination_slide_def"></div>
            <div class="panigation_number">
                <div class="cicle"></div>
                <div class="number">
                    <div class="active">
                        <?php
                        	$i_slide = 1;
                        	$i_slide_count = 1;
                        ?>
	                    <?php while ( has_sub_field('slide_banner' )) : ?>
	                    	<p data-slide="<?php echo $i_slide++ ?>" class="<?php echo $i_slide == 2 ? 'p' : null; ?>"><?php echo $i_slide_count++ ?></p> 
						<?php endwhile; ?>
                    </div>
                    <div>/</div>
                    <div class="total">3</div>
                </div>  
            </div>
        </section>
        <section class="box-about">
            <div class="container-fluid">
                <div class="about-top">
                    <div class="row align-items-center">
                        <div class="col-md-6">
                            <div class="title-ab-1" data-aos="fade-up"><img src="<?php echo get_field('title_box_1')['url'] ?>" class="img-fluid" alt=""></div>
                            <div class="avr-ab" data-aos="fade-left">
                                <?php while ( has_sub_field('content_hnay_1' )) : ?>
                                	<img src="<?php echo get_sub_field('avarta_hnay_1')['url'] ?>" class="img-fluid" alt="">
								<?php endwhile; ?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="txt-ab" data-aos="fade-right">
                                <div class="desc" data-aos="fade-up">
                                	<?php while ( has_sub_field('content_hnay_1' )) : ?>
                                		<?php echo get_sub_field('content_hnay_1') ?>
									<?php endwhile; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about-bott">
                    <div class="ab-abs" data-aos="fade-up">
                    	<?php while ( has_sub_field('content_hnay_2' )) : ?>
                        	<img src="<?php echo get_sub_field('avarta_hnay_2')['url'] ?>" class="img-fluid" alt="">
						<?php endwhile; ?>
                    </div>
                    <div class="row align-items-center">
                    	<?php while ( has_sub_field('content_hnay_3' )) : ?>
	                        <div class="col-md-6">
	                            <div class="txt-ab" data-aos="fade-right">
	                                <div class="desc">
	                                    <h3><img src="<?php echo get_sub_field('title_hnay_3')['url'] ?>" class="img" alt=""></h3>
	                                    <?php echo get_sub_field('content_hnay_3') ?>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="col-md-6">
	                            <div class="avr-ab" data-aos="fade-left">
	                                <img src="<?php echo get_sub_field('avarta_hnay_3')['url'] ?>" class="img-fluid" alt="">
	                            </div>
	                        </div>
                        <?php endwhile; ?>
                    </div>
                </div>
            </div>
        </section>
        <section class="box-dream">
            <div class="container-fluid">
                <div class="content-dream">
                    <div class="title-dream" data-aos="fade-up"><img src="<?php echo __BASE_URL__ ?>/images/title-dream.png" class="img-fluid" alt=""></div>
                    <div class="dream-top">
                    	<?php while ( has_sub_field('dream_1' )) : ?>
                        	<div class="row">
	                            <div class="col-md-6">
	                                <div class="txt-dream" data-aos="fade-up">
	                                    <?php echo get_sub_field('content_dream_1') ?>
	                                </div>
	                            </div>
	                            <div class="col-md-6">
	                                <div class="avrta-dream" data-aos="fade-up"><img src="<?php echo get_sub_field('avar_dream_1')['url'] ?>" class="img-fluid w-100" alt=""></div>
	                            </div>
	                        </div>
						<?php endwhile; ?>
                    </div>
                    <div class="list-dream-bot">  
                        <div class="row">
                            <div class="col-md-4">
                            	<?php while ( has_sub_field('dream_2' )) : ?>
			                        <div class="item-dream">
	                                    <div class="avrta-dream" data-aos="fade-up"><img src="<?php echo get_sub_field('avar_dream_2')['url'] ?>" class="img-fluid w-100" alt=""></div>
	                                    <div class="txt-dream" data-aos="fade-up">
	                                        <?php echo get_sub_field('content_dream_2') ?>
	                                    </div>
	                                </div>
								<?php endwhile; ?>
                            </div>
                            <div class="col-md-4">
                                <?php while ( has_sub_field('dream_3' )) : ?>
			                        <div class="item-dream">
	                                    <div class="avrta-dream" data-aos="fade-up"><img src="<?php echo get_sub_field('avr_dream_3')['url'] ?>" class="img-fluid w-100" alt=""></div>
	                                    <div class="txt-dream" data-aos="fade-up">
	                                        <?php echo get_sub_field('content_dream_3') ?>
	                                    </div>
	                                </div>
								<?php endwhile; ?>
                            </div> 
                            <div class="col-md-4">
                                <?php while ( has_sub_field('dream_4' )) : ?>
			                        <div class="item-dream">
	                                    <div class="avrta-dream" data-aos="fade-up"><img src="<?php echo get_sub_field('avar_dream_4')['url'] ?>" class="img-fluid w-100" alt=""></div>
	                                    <div class="txt-dream" data-aos="fade-up">
	                                        <?php echo get_sub_field('content_dream_4') ?>
	                                    </div>
	                                </div> 
								<?php endwhile; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="h-section5" id="tien-ich">
            <div class="bg-abs-tienich"><img src="<?php echo __BASE_URL__ ?>/images/bg-kv.jpg" alt=""></div>
            <div class="web" data-aos="fade-down">NHỮNG GIỚI HẠN CHƯA TỪNG CHẠM TỚI CỦA</div>
            <div class="title_sec_def" style="background-image: url('<?php echo __BASE_URL__ ?>/images/bgr_title.png')" data-aos="fade-up">
                <p>Khát vọng sống</p>
                <p>Đỉnh cao</p>
            </div>
            <div class="bgr"></div>
            <div class="slide_popup">
                <div class="close">
                    <img src="<?php echo __BASE_URL__ ?>/images/x.png" alt="FLC Quảng Bình">
                </div>
                <div class="swiper-container" id="slide_popup">
                    <div class="swiper-wrapper">
                        <?php while ( has_sub_field('content_kv' )) : ?>
                            <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo get_sub_field('avar_kv_item')['url'] ?>"></div>
                                <div class="title"><?php the_sub_field('title_kv_item') ?></div> <?php the_sub_field('sort_kv_item') ?>
                            </div>
                        </div>
                        <?php endwhile; ?>
                    </div>
                </div>
            </div>
            <div class="content" id="content">
                <div class="left">
                    <?php 
                        $count_item = 1;
                        $count_delay = 1;
                        $count_delay_img = 1;
                    ?>
                    <?php while ( has_sub_field('content_kv' )) : ?>
                        <div class="item" data-index="<?php echo $count_item++ ?>" data-aos="zoom-in" data-aos-delay="<?php echo $count_delay++ ?>00">
                            <div class="img" data-aos="zoom-in" data-aos-delay="<?php echo $count_delay_img++ ?>00">
                                <div class="img_scale" style="background-image: url('<?php echo get_sub_field('avar_kv_item')['url'] ?>"></div>
                            </div>
                            <p><?php the_sub_field('title_kv_item') ?></p>
                            <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                        </div>
                    <?php endwhile; ?>
                </div>
                <div class="right" data-aos="fade-up">
                    <div class="web">Cùng với</div>
                    <div class="title_sec_def" style="background-image: url('<?php echo __BASE_URL__ ?>/images/bgr_title.png')"> <?php echo the_field('title_numb') ?> </div><br> tiện ích <br> đẳng cấp 5*
                </div>
            </div> 
        </section>
        <section class="h-section6" id="tin-tuc">
            <div class="title_ss_def" data-aos="fade-up">Tin tức</div>
            <div class="_list_news">
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
                <?php $i = 0; ?>
                <?php if ( $my_query->have_posts() ): ?>
                    <?php while ($my_query->have_posts()):$my_query->the_post(); ?>
                        <?php $i++ ?>
                        <?php if ($i == 1): ?>
                            <div class="left" data-aos="fade-rigth">
			                    <a href="<?php echo get_the_permalink() ?>" class="swiper-slide" style="background-image: url('<?php echo get_the_post_thumbnail_url() ?>')">
			                        <div class="content">
			                            <div class="title"><?php echo get_the_title(); ?></div>
			                            <p class="see-more">Xem thêm <img src="<?php echo __BASE_URL__ ?>/images/right-white.svg" class="img-fluid" alt=""></p>
			                        </div>
			                    </a>
			                </div>
                        
                        <?php endif ?>
                    <?php endwhile ?>
                <?php endif;wp_reset_query(); ?>
                <div class="right" data-aos="fade-left">
                    <div class="swiper-container" id="s5_news">
                        <div class="swiper-wrapper">
                        	<?php $i_news = 0; ?>
                        	<?php if ( $my_query->have_posts() ): ?>
			                    <?php while ($my_query->have_posts()):$my_query->the_post(); ?>
			                        <?php $i_news++ ?>
			                        <?php if ($i_news >= 2): ?>
			                            <a href="<?php echo get_the_permalink() ?>" class="swiper-slide">
			                                <div class="content">
			                                    <div class="img">
			                                        <div class="img_scale" style="background-image: url('<?php echo get_the_post_thumbnail_url() ?>')"></div>
			                                    </div>
			                                    <div class="title"><?php echo get_the_title(); ?></div>
			                                    <p class="see-more">Xem thêm <img src="<?php echo __BASE_URL__ ?>/images/right-black.svg" class="img-fluid" alt=""></p>
			                                </div>
			                            </a>
			                        <?php endif ?>
			                    <?php endwhile ?>
			                <?php endif;wp_reset_query(); ?>
                        </div> 
                    </div>
                </div>
                <div class="swiper-pagination pagination_slide_def"></div>
            </div>
        </section>
        <section class="h-section7" id="tiem-nang">
            <div class="decor">
                <img src="<?php echo __BASE_URL__ ?>/images/decor_ss7.png" alt="FLC Quảng Bình">
            </div>
            <div class="left">
                <?php while ( has_sub_field('gt_maps' )) : ?>
                    <strong data-aos="fade-up"><?php the_sub_field('title_gt') ?></strong>
                    <p data-aos="fade-up"><?php the_sub_field('sort_gt') ?></p>
                    <ul data-aos="fade-up">
                        <?php while ( has_sub_field('content_gt' )) : ?>
                            <li><?php the_sub_field('item_gt') ?></li>
                        <?php endwhile; ?>
                    </ul>
                <?php endwhile; ?>

                <?php while ( has_sub_field('box_vantai' )) : ?>
                    <strong data-aos="fade-up"><?php the_sub_field('title_vantai') ?></strong>
                    <?php while ( has_sub_field('danh_sach_vantai' )) : ?>
                        <div class="item" data-aos="fade-up">
                            <div class="icon" data-aos="zoom-in">
                                <img src="<?php echo get_sub_field('icon_vantai')['url'] ?>" alt="FLC Quảng Bình">
                            </div>
                            <div class="exp"><?php the_sub_field('item_vantai') ?></div>
                        </div>
                    <?php endwhile; ?>
                <?php endwhile; ?>
                <br>
                <?php while ( has_sub_field('box_dulich' )) : ?>
                    <strong data-aos="fade-up"><?php the_sub_field('title_dulich') ?></strong>
                    <div class="list" data-aos="fade-up">
                        <?php while ( has_sub_field('danh_sach_dulich' )) : ?>
                            <div class="item2">
                                <div class="icon">
                                    <strong><?php the_sub_field('numb_dulich') ?></strong>
                                    <br> <?php the_sub_field('titlenumb_dulich') ?>
                                </div>
                                <div class="exp"><?php the_sub_field('desc_dulich') ?></div>
                            </div>
                        <?php endwhile; ?>
                    </div>
                <?php endwhile; ?> 
            </div>
            <div class="right" data-aos="fade-left">
                <div class="web" data-aos="fade-up">FLC GIA LAI GOLF CLUB & LUXURY RESORT</div>
                <div class="strong" data-aos="fade-up">Cửa ngõ Tây Nguyên</div>
                <div class="title_ss_def" data-aos="fade-up"> Thuận tiện mọi<br> hành trình kết nối </div>
                <div class="avr-i-maps"><img src="<?php echo __BASE_URL__ ?>/images/maps.svg" class="img-fluid" alt=""></div>
            </div>
        </section>
        <section class="h-lienket">
            <div class="container-fluid">
                <div class="box-lk text-center"  data-aos="fade-up"><img src="<?php echo get_field('avar_sitemap')['url'] ?>" class="img-fluid" alt=""></div>
            </div>
        </section>
        <section class="box-partner">
            <div class="container-fluid">
                <div class="content-part">
                    <div class="row align-items-center">
                        <div class="col-md-3">
                            <div class="title-partner">
                                <span>Đại lý <br>phân phối</span>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="list-part">
                                <div class="swiper-container" id="s6_part">
                                    <div class="swiper-wrapper">
                                        <?php while ( has_sub_field('list_part' )) : ?>
                                            <div class="swiper-slide">
                                                <div class="item-slide">
                                                    <div class="item-partner">
                                                        <div class="avr-par"><a href=""><img src="<?php echo get_sub_field('logo_part')['url']; ?>" class="img-fluid" alt=""></a></div>
                                                        <div class="info text-center">
                                                            <h3><a href=""><?php the_sub_field('title_part') ?></a></h3>
                                                            <p>Hotline: <strong><?php the_sub_field('hotline_part') ?></strong></p>
                                                            <div class="btn-part"><a href="<?php the_sub_field('link_part') ?>">LIÊN HỆ</a></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endwhile; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="container">
                <div class="title-regis text-center"  data-aos="fade-up">ĐĂNG KÝ TƯ VẤN</div>
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
    </div>
</div>

<?php get_footer(); ?>  
