<?php /* Template Name: Video */ ?>
<?php get_header(); ?>

<main id="cate-body">
    <section class="banner-bread">
        <div class="avarta-bread"><img src="<?php echo get_field('avar_banner')['url'] ?>" class="img-fluid w-100" alt=""></div>
        <div class="caption-bread">
            <div class="container-fluid">
                <div class="info-bread text-uppercase">
                    <label>Thư viện</label>
                    <p>Hình ảnh</p>
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
                            <h2><?php the_field('title_video') ?></h2>
                            <div class="desc">
                                <?php the_field('sort_video_title') ?>
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
                    <?php while ( has_sub_field('list_video' )) : ?>
                        <div class="col-md-4">
                            <div class="item-cate">
                                <div class="avarta"><a href="javascript:void(0)" data-toggle="modal" data-target="#myModal-<?php echo $gall++ ?>"><img src="<?php echo get_sub_field('avar_video_item')['url'] ?>" class="img-fluid w-100" alt=""></a></div>
                                <div class="info">
                                    <h3><a href="javascript:void(0)"><?php the_sub_field('title_video_item') ?></a></h3>
                                </div>
                            </div>
                        </div> 
                    <?php endwhile; ?>
                </div> 
            </div>
        </div>

        <?php $gall_pop = 1; ?>
        <?php while ( has_sub_field('list_video' )) : ?>
            <div class="modal fade modal-popup" id="myModal-<?php echo $gall_pop++ ?>">
                  <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="content-popup">
                                <button type="button" class="close" data-dismiss="modal">
                                    <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <circle cx="16" cy="16" r="16" fill="white"/>
                                        <path d="M22.4436 12.0619C22.5833 11.9374 22.696 11.7879 22.7752 11.6218C22.8544 11.4557 22.8987 11.2764 22.9054 11.094C22.912 10.9116 22.8811 10.7297 22.8142 10.5587C22.7473 10.3878 22.6458 10.2311 22.5156 10.0976C22.3853 9.96407 22.2288 9.8564 22.0549 9.7807C21.8811 9.70499 21.6934 9.66274 21.5025 9.65635C21.3116 9.64996 21.1212 9.67957 20.9423 9.74347C20.7633 9.80737 20.5993 9.90432 20.4596 10.0288L16.2036 13.8198L12.2357 9.75223C11.9702 9.49242 11.6088 9.34222 11.2288 9.33375C10.8489 9.32529 10.4806 9.45924 10.2027 9.70694C9.92478 9.95464 9.7594 10.2964 9.74192 10.6591C9.72444 11.0219 9.85625 11.3767 10.1091 11.6478L14.0771 15.714L9.81968 19.505C9.67502 19.6282 9.55759 19.7778 9.47428 19.945C9.39097 20.1121 9.34346 20.2935 9.33455 20.4785C9.32563 20.6634 9.35549 20.8482 9.42237 21.022C9.48925 21.1958 9.5918 21.355 9.724 21.4904C9.8562 21.6258 10.0154 21.7346 10.1922 21.8103C10.369 21.8861 10.5599 21.9274 10.7536 21.9317C10.9474 21.936 11.1401 21.9033 11.3204 21.8355C11.5007 21.7676 11.665 21.6661 11.8037 21.5367L16.0596 17.7471L20.0276 21.8133C20.1557 21.954 20.3122 22.0687 20.4877 22.1505C20.6632 22.2322 20.8541 22.2794 21.0491 22.2892C21.2441 22.2989 21.4391 22.2711 21.6226 22.2073C21.806 22.1435 21.9742 22.045 22.117 21.9178C22.2598 21.7906 22.3744 21.6373 22.4538 21.4669C22.5333 21.2965 22.576 21.1125 22.5795 20.926C22.5829 20.7395 22.547 20.5542 22.474 20.3812C22.4009 20.2083 22.2921 20.0511 22.1541 19.9191L18.1876 15.8529L22.4436 12.0619Z" fill="#838383"/>
                                    </svg>
                                </button> 
                                <div class="avarta-popup-gall">
                                    <?php the_sub_field('iframe_video') ?>
                                </div>
                                <div class="desc">
                                    <h3><?php the_sub_field('title_video_item') ?></h3>
                                    <div class="desc">
                                        <?php the_sub_field('content_video_item') ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>
                </div>
        <?php endwhile; ?>
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
