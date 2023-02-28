(function ($) {
  "use strict";
  var protonshub = {
    initialised: false,
    version: 1.0,
    init: function () {

      if (!this.initialised) {
        this.initialised = true;
      } else {
        return;
      }
      this.preloader();
      this.slider();
      this.counter();
      this.mainMenu();
      this.subMenu();

    },

    // preloader start
    preloader: function () {
      $(window).on('load', function () {
        setTimeout(function () {
          $('.ph-preloader-wrap').addClass('ph-preloder-loaded');
        }, 150);
      });
    },
    // preloader end


    // blog slider start
    slider: function () {
      if ($(".ph-myswiper-slide").length > 0) {
        var swiper = new Swiper(".ph-myswiper-slide", {
          slidesPerView: 3,
          autoplay: true,
          spaceBetween: 15,
          speed: 1000,
          loop: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
          breakpoints: {
            320: {
              slidesPerView: 1,
            },
            575: {
              slidesPerView: 2,
            },
            768: {
              slidesPerView: 2,
            },
            992: {
              slidesPerView: 3,
            },
            1399: {
              slidesPerView: 3,
            },
          },
        });
      };

      // our portfolio slider
      var swiper = new Swiper(".ph-portfolio-mySwiper", {
        slidesPerView: 5,
        slidesPerGroup: 1,
        autoplay: true,
        speed: 1000,
        loop: true,
        loopFillGroupWithBlank: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });

      //client logo slider
      var swiper = new Swiper(".ph-mySwiper", {
        slidesPerView: 5,
        spaceBetween: 20,
        autoplay: true,
        loop: true,
        speed: 1000,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        breakpoints: {
          320: {
            slidesPerView: 2,
          },
          575: {
            slidesPerView: 3,
          },
          768: {
            slidesPerView: 3,
          },
          992: {
            slidesPerView: 4,
          },
          1399: {
            slidesPerView: 4,
          },
        },
      });


      // Scroll back to top  
      $(document).ready(function () {
        "use strict";
        var progressPath = document.querySelector('.progress-wrap path');
        var pathLength = progressPath.getTotalLength();
        progressPath.style.transition = progressPath.style.WebkitTransition = 'none';
        progressPath.style.strokeDasharray = pathLength + ' ' + pathLength;
        progressPath.style.strokeDashoffset = pathLength;
        progressPath.getBoundingClientRect();
        progressPath.style.transition = progressPath.style.WebkitTransition = 'stroke-dashoffset 10ms linear';
        var updateProgress = function () {
          var scroll = $(window).scrollTop();
          var height = $(document).height() - $(window).height();
          var progress = pathLength - (scroll * pathLength / height);
          progressPath.style.strokeDashoffset = progress;
        }
        updateProgress();
        $(window).scroll(updateProgress);
        var offset = 150;
        var duration = 550;
        jQuery(window).on('scroll', function () {
          if (jQuery(this).scrollTop() > offset) {
            jQuery('.progress-wrap').addClass('active-progress');
          } else {
            jQuery('.progress-wrap').removeClass('active-progress');
          }
        });
        jQuery('.progress-wrap').on('click', function (event) {
          event.preventDefault();
          jQuery('html, body').animate({ scrollTop: 0 }, duration);
          return false;
        })

      });


      // Testmonial slider 
      var galleryTop = new Swiper('.slider-thumbs .gallery-top', {
        speed: 1000,
        navigation: {
          nextEl: '.slider-thumbs .swiper-button-next',
          prevEl: '.slider-thumbs .swiper-button-prev',
        },
        loop: true,
        loopedSlides: 4
      });

      var galleryThumbs = new Swiper('.slider-thumbs .gallery-thumbs', {
        centeredSlides: true,
        slidesPerView: 3,
        speed: 1000,
        autoplay: true,
        touchRatio: 0.2,
        slideToClickedSlide: true,
        loop: true,
        loopedSlides: 4
      });
      galleryTop.controller.control = galleryThumbs;
      galleryThumbs.controller.control = galleryTop;

    },


    // counter start
    counter: function () {
      if ($('.ph-why-choose-grid').length > 0) {
        var a = 0;
        $(window).scroll(function () {
          var oTop = $('#ph-counter-one').offset().top - window.innerHeight;
          if (a == 0 && $(window).scrollTop() > oTop) {
            $('.ph-counter-value').each(function () {
              var $this = $(this),
                countTo = $this.attr('data-count');
              $({
                countNum: $this.text()
              }).animate({
                countNum: countTo
              },
                {
                  duration: 3000,
                  easing: 'swing',
                  step: function () {
                    $this.text(Math.floor(this.countNum));
                  },
                  complete: function () {
                    $this.text(this.countNum);
                  }
                });
            });
            a = 1;
          }

        });
      }
    },
    // counter end

    // main menu start
    mainMenu: function () {
      if ($('.ph-main-wrapper').length > 0) {
        var w = window.innerWidth;
        if (w <= 1199) {
          $(".ph-menu-toggle").on('click', function (e) {
            event.stopPropagation();
            $("body").toggleClass("ph-menu-open");
          });
          $("body").on('click', function () {
            $("body").removeClass("ph-menu-open");
          });
          $(".ph-main-menu").on('click', function () {
            event.stopPropagation();
          });
        }
      }
    },
    // main menu end

    // sub menu start
    subMenu: function () {
      if ($('.ph-main-wrapper').length > 0) {
        var w = window.innerWidth;
        if (w <= 1199) {
          $(".ph-main-menu>ul li").on('click', function (e) {
            $(this).children('.ph-submenu').slideToggle();
            $(this).siblings('li').find('.ph-submenu').hide();
            e.stopPropagation();
          });
        }
      }
    },
    // sub menu end	


  };
  $(document).ready(function () {
    protonshub.init();
    $('.quality-left ul li').hover(function() {
        var index = $(this).index();
        $(this).addClass('active').siblings().removeClass('active');
        $('.quality-right ul li').eq(index).addClass('active').siblings().removeClass('active');
        });

        $('.technical-tk-ul ul li').hover(function() {
        $(this).toggleClass('active');
        $('.technical-stack-main').toggleClass('index-top');
        });
  })
  

})(jQuery);

