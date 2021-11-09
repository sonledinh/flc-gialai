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
						<div class="logo"><a href=""><img src="<?php echo __BASE_URL__ ?>/images/logo.png" class="img-fluid" alt="" style="max-width: 200px;"></a></div>
						<div class="i-logo"><img src="<?php echo __BASE_URL__ ?>/images/logo-2.png" class="img-fluid" alt="" style="max-width: 200px;"></div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="item-fter">
						<h3>CÔNG TY CỔ PHẦN QUẢN LÝ VỐN & TÀI SẢN FLC HOLDING - FCA</h3>
						<div class="info-fter">
							<ul class="mb-0">
								<li>
									<div class="icon"><img src="<?php echo __BASE_URL__ ?>/images/ft-1.png" class="img-fluid" alt=""></div>
									<span>Địa chỉ: Tầng 26 - Tòa nhà Bamboo Airways Tower, số 265 Cầu Giấy, phường Dịch Vọng, quận Cầu Giấy, Hà Nội</span>
								</li>
								<li>
									<div class="icon"><img src="<?php echo __BASE_URL__ ?>/images/ft-2.png" class="img-fluid" alt=""></div>
									<span>Phone: 088 970 6868</span>
								</li>
								<li>
									<div class="icon"><img src="<?php echo __BASE_URL__ ?>/images/ft-3.png" class="img-fluid" alt=""></div>
									<span>Email: cskh@flcholding.vn</span>
								</li>
								<li>
									<div class="icon"><img src="<?php echo __BASE_URL__ ?>/images/ft-4.png" class="img-fluid" alt=""></div>
									<span>Website: flcholding.vn</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-5">
					<div class="box-form-ft">
						<h4>ĐĂNG KÝ NHẬN THÔNG TIN DỰ ÁN</h4>
						<div class="list-form">
							<div class="item-form-ft"><input type="text" placeholder="Họ và tên" class="txt_field"></div>
							<div class="item-form-ft"><input type="text" placeholder="Điện thoại" class="txt_field"></div>
							<div class="item-form-ft"><input type="text" placeholder="Email" class="txt_field"></div>
							<div class="item-form-ft"><textarea placeholder="Nội dung"></textarea></div>
							<div class="item-form-ft text-center"><input type="submit" value="GỬI" class="send-submit"></div>
						</div>
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
					<li class="list-inline-item"><img src="<?php echo __BASE_URL__ ?>/images/social.png" class="img-fluid" alt=""></li>
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
	                <a href="tel:0912386968" class="pps-btn-img"> <img src="<?php echo __BASE_URL__ ?>/images/quick.png" alt="Gọi điện thoại" width="50" data-lazy-src="" data-pin-no-hover="true" class="lazyloaded" data-was-processed="true">
	                </a>
	            </div>
	        </div>
	        <div class="hotline-bar">
	            <a href="tel:088 970 6868"> <span class="text-hotline" id="call-now-1">088 970 6868</span> </a>
	        </div>
	    </div>
	</div>
</footer>



<?php wp_footer(); ?>

</body>
</html>
