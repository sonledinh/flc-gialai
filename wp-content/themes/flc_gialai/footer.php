<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package flc_gialai
 */

?>


<footer style="background: url(<?php echo __BASE_URL__ ?>/images/bg-regis.png) no-repeat center;background-size: cover;">
	<div class="footer-top">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div class="item-fter">
						<div class="logo"><a href=""><img src="<?php echo get_field('logo_footer_1','option')['url'] ?>" class="img-fluid" alt="" style="max-width: 200px;"></a></div>
						<div class="i-logo"><img src="<?php echo get_field('logo_footer_2','option')['url'] ?>" class="img-fluid" alt="" style="max-width: 200px;"></div>
					</div>
				</div>
				<div class="col-md-4">
					<?php while ( has_sub_field('content_footer','option' )) : ?>
                    	<div class="item-fter">
							<h3><?php the_field('title_fter','option') ?></h3>
							<div class="info-fter">
								<ul class="mb-0">
									<?php while ( has_sub_field('list_fter','option' )) : ?>
				                    	<li>
											<div class="icon"><img src="<?php echo get_sub_field('icon_fter','option')['url'] ?>" class="img-fluid" alt=""></div>
											<span><?php the_sub_field('text_fter','option') ?></span>
										</li>
									<?php endwhile; ?>
									
								</ul>
							</div>
						</div>
					<?php endwhile; ?>
				</div>
				<div class="col-md-5">
					<div class="box-form-ft">
						<h4>ĐĂNG KÝ NHẬN THÔNG TIN DỰ ÁN</h4>
						<?php echo do_shortcode('[contact-form-7 id="7" title="Đăng ký nhận thông tin dự án"]'); ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-bott">
		<div class="container-fluid">
			<div class="social">
				<ul class="list-inline mb-0">
					<li class="list-inline-item"><span>KẾT NỐI VỚI CHÚNG TÔI</span></li>
					<?php while ( has_sub_field('link_social','option' )) : ?>
                    	<?php while ( has_sub_field('danh_sach_mxh','option' )) : ?>
	                    	<li class="list-inline-item"><a href="<?php the_sub_field('link_mxh','option') ?>"><img src="<?php echo get_sub_field('icon_mxh','option')['url'] ?>" class="img-fluid" alt=""></a></li>
						<?php endwhile; ?>
					<?php endwhile; ?>
				</ul>
			</div>
		</div>
	</div>

	<div id="callnow" class="hotline">
	    <div class="hotline-phone-ring-wrap">
	        <div class="hotline-phone-ring" id="call-now-1">
	            <div class="hotline-phone-ring-circle"></div>
	            <div class="hotline-phone-ring-circle-fill"></div> 
	            <div class="hotline-phone-ring-img-circle">
	                <a href="tel:<?php the_field('hotline','option') ?>" class="pps-btn-img"> <img src="<?php echo __BASE_URL__ ?>/images/quick.png" alt="Gọi điện thoại" width="50" data-lazy-src="" data-pin-no-hover="true" class="lazyloaded" data-was-processed="true">
	                </a>
	            </div>
	        </div>
	        <div class="hotline-bar">
	            <a href="tel:<?php the_field('hotline','option') ?>"> <span class="text-hotline" id="call-now-1"><?php the_field('hotline','option') ?></span> </a>
	        </div>
	    </div>
	</div>
</footer>



<?php wp_footer(); ?>

</body>
</html>
