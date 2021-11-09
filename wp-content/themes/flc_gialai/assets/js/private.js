"use strict";
jQuery(document).ready(function (e) {
    e(".scroll_top").click(function () {
        return e("html,body").animate({ scrollTop: 0 }, 800), !1;
    }), e(".h_section1 .js-ink-trigger").addClass("is-active");
});

jQuery(document).ready(function($) {
    var h_section1 = new Swiper('.h_section1 .swiper-container', {
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
        pagination: {
            clickable: true,
            el: '.h_section1 .swiper-pagination',
        },
    });
    $(function() {
        function myFnc() {
            $('.panigation_number .cicle').addClass('active');
        };
        setInterval(function() {
            myFnc()
        }, 0);
    });
    h_section1.on('slideChange', function() {
        $('.panigation_number .cicle').removeClass('active');
        h_section1.update();
        var num2 = $('.h_section1 .swiper-container ').find(".swiper-slide-active").attr("data-swiper-slide-index");
        var num_plus2 = parseInt(num2) + 1;
        $('.panigation_number .number .active p').removeClass('p');
        $('[data-slide = "' + num_plus2 + '"]').addClass("p");
        $('.panigation_number .cicle').addClass('active');
    });
});

jQuery(document).ready(function($) {
    var slide_popup = new Swiper('#slide_popup', {
        speed: 1200,
        loop: true,
        speed: 800,
        slidesPerView: 1,
        spaceBetween: 0,
        effect: 'fade',
        fadeEffect: {
            crossFade: true
        },
    });
    $('#content .left .item').click(function() {
        $('.h-section5 .slide_popup').addClass('opacity');
        var data_order = $(this).attr('data-index');
        var votevalue = parseInt(data_order);
        slide_popup.slideTo(votevalue);
    });
    $('.slide_popup .close').click(function() {
        $(this).parent().removeClass('opacity');
    });


    var screen_width = jQuery(window).width();
    if (screen_width <= 1280) {
        $('#content .left .item').click(function() {
            $('html, body').css({
                overflow: 'hidden',
            });
            $('.h-section5 .bgr').addClass('active');
        });
        $('.slide_popup .close').click(function() {
            $('.h-section5 .bgr').removeClass('active');
            $('html, body').css({
                overflow: 'unset',
            });
            $('.h-section5 ').css("z-index", "0");
        });
        $('.h-section5 .bgr').click(function() {
            $('html, body').css({
                overflow: 'unset',
            });
            $('.h-section5 .slide_popup').removeClass('opacity');
            $(this).removeClass('active');
            slide_popup.update();
            $('.h-section5 ').css("z-index", "0");
        });
    };
    if (screen_width <= 480) {
        $('#content .left .item').click(function() {
            $('.h-section5 ').css("z-index", "11111111");
        });
    }

    var slide_part = new Swiper('#slide_part', {
        speed: 1200,
        loop: true,
        speed: 800,
        slidesPerView: 4,
        spaceBetween: 20,
        effect: 'fade',
        fadeEffect: {
            crossFade: true
        },
    });
});

jQuery(document).ready(function($) {
    var screen_width = jQuery(window).width();
    if (screen_width > 480) {
        var s5_news = new Swiper('._list_news .right #s5_news', {
            speed: 800,
            spaceBetween: 20,
            slidesPerView: 2,
            pagination: {
                clickable: true,
                el: '._list_news .swiper-pagination',
            },
            breakpoints: {
                1025: {
                    slidesPerView: 3,
                    spaceBetween: 36,
                },
            }
        });
    } else {
        var s5_news = new Swiper('._list_news .right #s5_news', {
            speed: 800,
            effect: 'coverflow',
            fadeEffect: {
                crossFade: true
            },
            speed: 1000,
            slidesPerView: 1,
            slidesPerColumn: 3,
            slidesPerColumnFill: 'row',
            spaceBetween: 20,
            pagination: {
                clickable: true,
                el: '._list_news .swiper-pagination',
            },
        });
    }

    var s6_part = new Swiper('#s6_part', {
        speed: 800,
        speed: 1000,
        loop: true,
        slidesPerView: 4,
        spaceBetween: 50,
        pagination: {
            clickable: true,
            el: '._list_news .swiper-pagination',
        },
    });

    AOS.init({ duration: 1e3, easing: "linear", once: !0 })

});


jQuery(document).ready(function( $ ) {
  $("#menu").mmenu({
     "extensions": [
        "fx-menu-zoom"
     ],
     "counters": true
  });
});