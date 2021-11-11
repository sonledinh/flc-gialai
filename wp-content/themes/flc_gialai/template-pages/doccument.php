<?php /* Template Name: Tài liệu */ ?>
<?php get_header(); ?>

<main id="cate-body">
    <section class="banner-bread">
        <div class="avarta-bread"><img src="<?php echo get_field('avar_banner')['url'] ?>" class="img-fluid w-100" alt=""></div>
        <div class="caption-bread">
            <div class="container-fluid">
                <div class="info-bread text-uppercase">
                    <label>Thư viện</label>
                    <p>Tài liệu</p>
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
                            <h2><?php the_field('title_doc') ?></h2>
                            <div class="desc">
                                <?php the_field('sort_doc') ?>
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
                    <?php $gall = 1; ?>
                    <?php while ( has_sub_field('list_doc' )) : ?> 
                        <div class="col-md-4">
                            <div class="item-cate">
                                <div class="avarta">
                                    <div class="icon-play icon-down"><img src="<?php echo __BASE_URL__ ?>/images/download.png" class="img-fluid" alt=""></div>
                                    <a download="<?php the_sub_field('title_doc_item') ?>" href="<?php echo get_sub_field('file_dinh_kem')['url'] ?>"><img src="<?php echo get_sub_field('avar_doc_item')['url'] ?>" class="img-fluid w-100" alt=""></a>
                                </div>
                                <div class="info">
                                    <h3><a download="<?php the_sub_field('title_doc_item') ?>" href="<?php echo get_sub_field('file_dinh_kem')['url'] ?>"><?php the_sub_field('title_doc_item') ?></a></h3>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
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
