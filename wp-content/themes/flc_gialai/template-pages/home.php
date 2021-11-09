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
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/beachbar.jpg')"></div>
                                <div class="title">Trung tâm thương mại</div> <!-- Quán bar bên bờ biển với các loại beer hảo hạng từ khắp nơi trên thế giới cùng những bữa tiệc âm nhạc cuồng nhiệt sẽ mang tới một không gian giải trí sôi động và khác biệt -->
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/oceanbar.jpg')"></div>
                                <div class="title">Trường học</div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/beach.jpg')"></div>
                                <div class="title">Bãi bãi đỗ xe thông minh</div> <!-- Hệ thống nhà nghỉ nổi tại FLC Quang Binh Beach & Golf Resort sẽ mang đến cho cư dân và du khách những trải nghiệm thú vị đến từ những ngôi nhà nhỏ đủ màu sắc nằm cạnh bãi biển. <br> Ở đó, bạn sẽ rời xa sự ồn ào, náo nhiệt, để tận hưởng bầu không khí của biển căng tràn lồng ngực và ngắm nhìn từng lớp sóng như muôn vàn viên ngọc đang lăn vào bờ ngân lên những âm thanh dào dạt, tràn sức sống. -->
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/sangolf.jpg')"></div>
                                <div class="title">Bãi bãi đỗ xe thông minh</div> <!-- Trên mảnh đất của Vị Đại tướng huyền thoại, khi chiến tranh đã lùi xa, bằng sự kính trọng và tự hào, chúng tôi muốn tạo nên một công trình nâng tầm vị thế của dải đất miền Trung trong mắt bạn bè quốc tế. Dựa trên khuôn mẫu của tổ hợp sân Golf lớn nhất thế giới Mission Hills Golf Club, FLC Quang Binh Golf Links là tổ hợp sân golf liên hoàn 18 hố dạng Links tiêu chuẩn quốc tế lớn nhất Việt Nam. Đây đồng thời cũng là dự án hạ tầng du lịch lớn nhất của Quảng Bình và khu vực miền Trung tính đến thời điểm hiện tại Nơi sự pha trộn hoàn hảo giữa cảnh quan thiên nhiên tuyệt đẹp cùng các địa hình đa dạng tạo nên những đường Golf độc đáo, đầy thử thách và sẽ là trải nghiệm thú vị cho các Golf thủ. -->
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/oceanpark.jpg')"></div>
                                <div class="title">Tháp đồng hồ</div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/sand.jpg')"></div>
                                <div class="title">Kid Zone</div>
                            </div>
                        </div>
                        <div class="swiper-slide"> 
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/night.jpg')"></div>
                                <div class="title">Safari Zoo</div> <!-- Night Safari đầu tiên tại Việt Nam với cảnh quan sinh thái hấp dẫn, những khu chuồng trại được thiết kế theo đặc tính sinh học của từng loài sẽ mang đến cho cư dân và du khách những trải nghiệm thú vị. <br> Nơi hiện hữu của hàng trăm cá thể động vật săn đêm quý hiếm như: Sư tử, hổ, báo, chó sói, đại bàng,... -->
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/caucangben.jpg')"></div>
                                <div class="title">Quảng trường nhạc nước</div><!--  Cầu cảng FLC Quang Binh Beach & Golf Resort sẽ là bến đỗ của những chiếc du thuyền sang trọng nhất thế giới. <br> Trong từng hơi thở của rừng cây, đồi cát và biển cả, cầu cảng FLC Quang Binh Beach & Golf Resort là điểm nhấn tô điểm cho sự quy mô và tầm cỡ của dự án. Điểm đến của những trải nghiệm nghỉ dưỡng xa hoa nhất Việt Nam. -->
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/congvienlehoi.jpg')"></div>
                                <div class="title">Vườn nội khu</div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/qungtruongbien.jpg')"></div>
                                <div class="title">Khách sạn 5*</div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/congvientrungtam.jpg')"></div>
                                <div class="title">Công viên trung tâm</div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="content_slide">
                                <div class="img" style="background-image: url('<?php echo __BASE_URL__ ?>/images/hotinhyeu.jpg')"></div>
                                <div class="title">Hồ tình yêu</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content" id="content">
                <div class="left">
                    <div class="item" data-index="1" data-aos="zoom-in" data-aos-delay="0">
                        <div class="img" data-aos="zoom-in" data-aos-delay="0">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/beachbar.jpg')"></div>
                        </div>
                        <p>Trung tâm thương mại</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="2" data-aos="zoom-in" data-aos-delay="100">
                        <div class="img" data-aos="zoom-in" data-aos-delay="100">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/oceanbar.jpg')"></div>
                        </div>
                        <p>Trường học</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="3" data-aos="zoom-in" data-aos-delay="200">
                        <div class="img" data-aos="zoom-in" data-aos-delay="200">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/beach.jpg')"></div>
                        </div>
                        <p>Bãi bãi đỗ xe thông minh</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="4" data-aos="zoom-in" data-aos-delay="300">
                        <div class="img" data-aos="zoom-in" data-aos-delay="300">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/sangolf.jpg')"></div>
                        </div>
                        <p>Sân Golf 36 hố</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="5" data-aos="zoom-in" data-aos-delay="400">
                        <div class="img" data-aos="zoom-in" data-aos-delay="400">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/oceanpark.jpg')"></div>
                        </div>
                        <p>Kid Zone</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="6" data-aos="zoom-in" data-aos-delay="500">
                        <div class="img" data-aos="zoom-in" data-aos-delay="500">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/home/sand.jpg')"></div>
                        </div>
                        <p>Kid Zone</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="7" data-aos="zoom-in" data-aos-delay="600">
                        <div class="img" data-aos="zoom-in" data-aos-delay="600">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/night.jpg')"></div>
                        </div>
                        <p>Safari Zoo</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="8" data-aos="zoom-in" data-aos-delay="700">
                        <div class="img" data-aos="zoom-in" data-aos-delay="700">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/caucangben.jpg')"></div>
                        </div>
                        <p>Quảng trường nhạc nước</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="9" data-aos="zoom-in" data-aos-delay="800">
                        <div class="img" data-aos="zoom-in" data-aos-delay="800">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/congvienlehoi.jpg')"></div>
                        </div>
                        <p>Quảng trường nhạc nước</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="10" data-aos="zoom-in" data-aos-delay="900">
                        <div class="img" data-aos="zoom-in" data-aos-delay="900">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/qungtruongbien.jpg')"></div>
                        </div>
                        <p>Khách sạn 5*</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="11" data-aos="zoom-in" data-aos-delay="1000">
                        <div class="img" data-aos="zoom-in" data-aos-delay="1000">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/congvientrungtam.jpg')"></div>
                        </div>
                        <p>Công viên <br> trung tâm </p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                    <div class="item" data-index="12" data-aos="zoom-in" data-aos-delay="1100">
                        <div class="img" data-aos="zoom-in" data-aos-delay="1100">
                            <div class="img_scale" style="background-image: url('<?php echo __BASE_URL__ ?>/images/hotinhyeu.jpg')"></div>
                        </div>
                        <p>Hồ điều hòa</p>
                        <div class="i-def"><img src="<?php echo __BASE_URL__ ?>/images/def.svg" class="img-fluid" alt=""></div>
                    </div>
                </div>
                <div class="right" data-aos="fade-up">
                    <div class="web">Cùng với</div>
                    <div class="title_sec_def" style="background-image: url('<?php echo __BASE_URL__ ?>/images/bgr_title.png')"> 50+ </div><br> tiện ích <br> đẳng cấp 5*
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
                <strong data-aos="fade-up">Giao thông</strong>
                <p data-aos="fade-up">Các tuyến giao thông huyết mạch Bắc - Nam chạy qua dự án</p>
                <ul data-aos="fade-up">
                    <li>Đường Hồ Chí Minh</li>
                    <li>19, 19D, 25, 14C</li>
                    <li>Đường Trường Sơn Đông</li>
                </ul>
                <strong data-aos="fade-up">Vận tải</strong>
                <div class="item" data-aos="fade-up">
                    <div class="icon" data-aos="zoom-in">
                        <img src="<?php echo __BASE_URL__ ?>/images/icon-1.png" alt="FLC Quảng Bình">
                    </div>
                    <div class="exp"> 14 chuyến/tuần từ Hà Nội. ( Trung bình 1h35p/chuyến )<br> 14-24 chuyến/tuần từ Hồ Chí Minh. ( Trung bình 1h10p/chuyến )</div>
                </div>
                <div class="item" data-aos="fade-up">
                    <div class="icon" data-aos="zoom-in">
                        <img src="<?php echo __BASE_URL__ ?>/images/icon-2.png" alt="FLC Quảng Bình">
                    </div>
                    <div class="exp"> 14 chuyến/tuần từ Hà Nội. ( Trung bình 1h35p/chuyến )<br> 14-24 chuyến/tuần từ Hồ Chí Minh. ( Trung bình 1h10p/chuyến )</div>
                </div>
                <br>
                <strong data-aos="fade-up">Du lịch</strong>
                <div class="list" data-aos="fade-up">
                    <div class="item2">
                        <div class="icon">
                            <strong>4.500.000</strong>
                            <br> Người/năm
                        </div>
                        <div class="exp"> Lượng khách du lịch trong nước </div>
                    </div>
                    <div class="item2">
                        <div class="icon">
                            <strong>250.000</strong>
                            <br> Người/năm
                        </div>
                        <div class="exp"> Lượng khách du lịch nước ngoài </div>
                    </div>
                </div>
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
                <div class="box-lk text-center"  data-aos="fade-up"><img src="<?php echo __BASE_URL__ ?>/images/lienket.png" class="img-fluid" alt=""></div>
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
                                        <div class="swiper-slide">
                                            <div class="item-slide">
                                                <div class="item-partner">
                                                    <div class="avr-par"><a href=""><img src="<?php echo __BASE_URL__ ?>/images/part-1.png" class="img-fluid" alt=""></a></div>
                                                    <div class="info text-center">
                                                        <h3><a href="">CITY LAND</a></h3>
                                                        <p>Hotline: <strong>0123456789</strong></p>
                                                        <div class="btn-part"><a href="">LIÊN HỆ</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="item-slide">
                                                <div class="item-partner">
                                                    <div class="avr-par"><a href=""><img src="<?php echo __BASE_URL__ ?>/images/part-2.jpg" class="img-fluid" alt=""></a></div>
                                                    <div class="info text-center">
                                                        <h3><a href="">CITY LAND</a></h3>
                                                        <p>Hotline: <strong>0123456789</strong></p>
                                                        <div class="btn-part"><a href="">LIÊN HỆ</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="item-slide">
                                                <div class="item-partner">
                                                    <div class="avr-par"><a href=""><img src="<?php echo __BASE_URL__ ?>/images/part-3.png" class="img-fluid" alt=""></a></div>
                                                    <div class="info text-center">
                                                        <h3><a href="">CITY LAND</a></h3>
                                                        <p>Hotline: <strong>0123456789</strong></p>
                                                        <div class="btn-part"><a href="">LIÊN HỆ</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="item-slide">
                                                <div class="item-partner">
                                                    <div class="avr-par"><a href=""><img src="<?php echo __BASE_URL__ ?>/images/part-4.jpg" class="img-fluid" alt=""></a></div>
                                                    <div class="info text-center">
                                                        <h3><a href="">CITY LAND</a></h3>
                                                        <p>Hotline: <strong>0123456789</strong></p>
                                                        <div class="btn-part"><a href="">LIÊN HỆ</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="swiper-slide">
                                            <div class="item-slide">
                                                <div class="item-partner">
                                                    <div class="avr-par"><a href=""><img src="<?php echo __BASE_URL__ ?>/images/part-5.jpg" class="img-fluid" alt=""></a></div>
                                                    <div class="info text-center">
                                                        <h3><a href="">CITY LAND</a></h3>
                                                        <p>Hotline: <strong>0123456789</strong></p>
                                                        <div class="btn-part"><a href="">LIÊN HỆ</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
