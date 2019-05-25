var Layout = function () {
    var isMobileDevice = function() {
        return  ((
            navigator.userAgent.match(/Android/i) ||
            navigator.userAgent.match(/BlackBerry/i) ||
            navigator.userAgent.match(/iPhone|iPad|iPod/i) ||
            navigator.userAgent.match(/Opera Mini/i) ||
            navigator.userAgent.match(/IEMobile/i)
        ) ? true : false);
    }

    var WindowWidth = $(window).width();
    var WindowHeight = $(window).height();

    var handleParallax = function () {
        $(window).load(function(){
            if (isMobileDevice() === false) {
                $("#message-block").parallax("50%",0.4);
                $("#facts-block").parallax("50%",0.4);
            }
        });
    }

    var handleScrolling = function () {
        $(".scroll").on("click", function(event) {
            event.preventDefault();//the default action of the event will not be triggered
            $("html, body").animate({scrollTop:($("#"+this.href.split("#")[1]).offset().top)}, 600);
        });
    }

    /* Smooth scrolling and smart navigation when user scrolls on one-page sites */
    var handleNavItemCurrent = function () {
        $(".header-navigation").onePageNav({
            currentClass: "current",
            scrollThreshold: 0
        });
    }

    var handleHeaderPosition = function () {
        var CurrentHeaderPosition = $(".header").offset().top;// current header's vertical position
        
        var headerFix = function(){
            var CurrentWindowPosition = $(window).scrollTop();// current vertical position
            if (CurrentWindowPosition > CurrentHeaderPosition) {
                $(".header").addClass("fixNav");
            } else {
                $(".header").removeClass("fixNav");
            }
        };

        headerFix();// call headerFix() when the page was loaded
        if (navigator.userAgent.match(/iPhone|iPad|iPod/i)) {
            $(window).bind("touchend touchcancel touchleave", function(e){
                headerFix();
            });
        } else {
            $(window).scroll(function() {
                headerFix();
            });
        }
    }

    var handleGo2Top = function () {       
        var Go2TopOperation = function(){
            var CurrentWindowPosition = $(window).scrollTop();// current vertical position
            if (CurrentWindowPosition > 300) {
                $(".go2top").show();
            } else {
                $(".go2top").hide();
            }
        };

        Go2TopOperation();// call headerFix() when the page was loaded
        if (navigator.userAgent.match(/iPhone|iPad|iPod/i)) {
            $(window).bind("touchend touchcancel touchleave", function(e){
                Go2TopOperation();
            });
        } else {
            $(window).scroll(function() {
                Go2TopOperation();
            });
        }
    }

    function handleBootstrap() {
        $(".carousel").carousel({
            interval: 15000,
            pause: "hover"
        });
        $(".tooltips").tooltip();
        $(".popovers").popover();
    }

    function handleCounter() {
        /*$('.counter').counterUp({
            delay: 10,
            time: 1000
        });*/
    }

    var handlePortfolioSorting = function () {
        /*$(".sorting-grid").mixitup();*/
    }

    var handleFancybox = function () {
        if (!jQuery.fancybox) {
            return;
        }
        $(".zoom").fancybox();
    }

    var handleMobiToggler = function () {
        $(".mobi-toggler").on("click", function(event) {
            event.preventDefault();//the default action of the event will not be triggered
            
            $(".header").toggleClass("menuOpened");
            $(".header").find(".header-navigation").toggle(300);            
        });

        function SlideUpMenu () {
            $(".header-navigation a").on("click", function(event) {
                if ($(window).width()<1024) {
                    event.preventDefault();//the default action of the event will not be triggered
                    $(".header-navigation").slideUp(100);
                    $(".header").removeClass("menuOpened");
                }
            });
            $(window).scroll(function() {
                if (($(window).width()>480)&&($(window).width()<1024)) {
                    $(".header-navigation").slideUp(100);
                    $(".header").removeClass("menuOpened");
                }
            });
        }
        SlideUpMenu();
        $(window).resize(function() {
            SlideUpMenu();
        });
    }

    var handleTwitter = function () {
        !function(d,s,id){
            var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}
        }(document,"script","twitter-wjs");
    }  
        
    function valignCenterMessageFunction () {
         MessageCurrentElemHeight = $(".message-block .valign-center-elem").height();

        $(".message-block .valign-center-elem").css("position", "absolute")
            .css ("top", "50%")
            .css ("margin-top", "-"+MessageCurrentElemHeight/2+"px")
            .css ("width", "100%")
            .css ("height", MessageCurrentElemHeight);
    }

    function valignCenterPortfolioFunction () {
         PortfolioCurrentElemHeight = $(".portfolio-block .valign-center-elem").height();

        $(".portfolio-block .valign-center-elem").css("position", "absolute")
            .css ("top", "50%")
            .css ("margin-top", "-"+PortfolioCurrentElemHeight/2+"px")
            .css ("width", "100%")
            .css ("height", PortfolioCurrentElemHeight);
    }

    var valignCenterMessage = function () {
        valignCenterMessageFunction();
        $(window).resize(function() {
            valignCenterMessageFunction();
        });
    }
    var valignCenterPortfolio = function () {
        valignCenterPortfolioFunction();
        $(window).resize(function() {
            valignCenterPortfolioFunction();
        });
    }

    var handleTheme = function () {
    
        var panel = $('.color-panel');
    
        // handle theme colors
        var setColor = function (color) {
            $('#style-color').attr("href", "../../assets/onepage/css/themes/" + color + ".css");
            $('.site-logo img').attr("src", "../../assets/onepage/img/logo/" + color + ".png");
        }

        $('.icon-color', panel).click(function () {
            $('.color-mode').show();
            $('.icon-color-close').show();
        });

        $('.icon-color-close', panel).click(function () {
            $('.color-mode').hide();
            $('.icon-color-close').hide();
        });

        $('li', panel).click(function () {
            var color = $(this).attr("data-style");
            setColor(color);
            $('.inline li', panel).removeClass("current");
            $(this).addClass("current");
        });

        $('.color-panel .menu-pos').change(function(){
            if ($(this).val() == "top") {
                $('body').addClass("menu-always-on-top");
            } else {
                $('body').removeClass("menu-always-on-top");
            }
        });
    }

    //Search
    
    
    $(function () {
$('a[href="#search"]').on('click', function(event) {
  event.preventDefault();
  $('#search').addClass('open');
  $('#search > form > input[type="search"]').focus();
});

$('#search, #search button.close').on('click keyup', function(event) {
  if (event.target == this || event.target.className == 'close' || event.keyCode == 27) {
      $(this).removeClass('open');
  }
});


});

    
    // rate
    

    // Starrr plugin (https://github.com/dobtco/starrr)
    var __slice = [].slice;
    
    (function($, window) {
      var Starrr;
    
      Starrr = (function() {
        Starrr.prototype.defaults = {
          rating: void 0,
          numStars: 5,
          change: function(e, value) {}
        };
    
        function Starrr($el, options) {
          var i, _, _ref,
            _this = this;
    
          this.options = $.extend({}, this.defaults, options);
          this.$el = $el;
          _ref = this.defaults;
          for (i in _ref) {
            _ = _ref[i];
            if (this.$el.data(i) != null) {
              this.options[i] = this.$el.data(i);
            }
          }
          this.createStars();
          this.syncRating();
          this.$el.on('mouseover.starrr', 'span', function(e) {
            return _this.syncRating(_this.$el.find('span').index(e.currentTarget) + 1);
          });
          this.$el.on('mouseout.starrr', function() {
            return _this.syncRating();
          });
          this.$el.on('click.starrr', 'span', function(e) {
            return _this.setRating(_this.$el.find('span').index(e.currentTarget) + 1);
          });
          this.$el.on('starrr:change', this.options.change);
        }
    
        Starrr.prototype.createStars = function() {
          var _i, _ref, _results;
    
          _results = [];
          for (_i = 1, _ref = this.options.numStars; 1 <= _ref ? _i <= _ref : _i >= _ref; 1 <= _ref ? _i++ : _i--) {
            _results.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"));
          }
          return _results;
        };
    
        Starrr.prototype.setRating = function(rating) {
          if (this.options.rating === rating) {
            rating = void 0;
          }
          this.options.rating = rating;
          this.syncRating();
          return this.$el.trigger('starrr:change', rating);
        };
    
        Starrr.prototype.syncRating = function(rating) {
          var i, _i, _j, _ref;
    
          rating || (rating = this.options.rating);
          if (rating) {
            for (i = _i = 0, _ref = rating - 1; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
              this.$el.find('span').eq(i).removeClass('glyphicon-star-empty').addClass('glyphicon-star');
            }
          }
          if (rating && rating < 5) {
            for (i = _j = rating; rating <= 4 ? _j <= 4 : _j >= 4; i = rating <= 4 ? ++_j : --_j) {
              this.$el.find('span').eq(i).removeClass('glyphicon-star').addClass('glyphicon-star-empty');
            }
          }
          if (!rating) {
            return this.$el.find('span').removeClass('glyphicon-star').addClass('glyphicon-star-empty');
          }
        };
    
        return Starrr;
    
      })();
      return $.fn.extend({
        starrr: function() {
          var args, option;
    
          option = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
          return this.each(function() {
            var data;
    
            data = $(this).data('star-rating');
            if (!data) {
              $(this).data('star-rating', (data = new Starrr($(this), option)));
            }
            if (typeof option === 'string') {
              return data[option].apply(data, args);
            }
          });
        }
      });
    })(window.jQuery, window);
    
    $(function() {
      return $(".starrr").starrr();
    });
    
    $( document ).ready(function() {
        
        var correspondence=["","Really Bad","Bad","Fair","Good","Excelent"];
          
      $('.ratable').on('starrr:change', function(e, value){
       
         $(this).closest('.evaluation').children('#count').html(value);
         $(this).closest('.evaluation').children('#meaning').html(correspondence[value]);
         
         var currentval=  $(this).closest('.evaluation').children('#count').html();
         
        var target=  $(this).closest('.evaluation').children('.indicators');
        target.css("color","black");
        target.children('.rateval').val(currentval);
        target.children('#textwr').html(' ');
       
        
        if(value<3){
         target.css("color","red").show(); 
         target.children('#textwr').text('What can be improved?');
        }else{
            if(value>3){    
                target.css("color","green").show(); 
                target.children('#textwr').html('What was done correctly?');
            }else{
           target.hide();  
            }
        }
        
      });
      
      
      
     
      
      $('#hearts-existing').on('starrr:change', function(e, value){
        $('#count-existing').html(value);
      });
    });
    
    
    
    
    
    $(function () {
        $('.button-checkbox').each(function () {
    
            // Settings
            var $widget = $(this),
                $button = $widget.find('button'),
                $checkbox = $widget.find('input:checkbox'),
                color = $button.data('color'),
                settings = {
                    on: {
                        icon: 'glyphicon glyphicon-check'
                    },
                    off: {
                        icon: 'fa fa-square-o'
                    }
                };
    
            // Event Handlers
            $button.on('click', function () {
                $checkbox.prop('checked', !$checkbox.is(':checked'));
                $checkbox.triggerHandler('change');
                updateDisplay();
            });
            $checkbox.on('change', function () {
                updateDisplay();
            });
    
            // Actions
            function updateDisplay() {
                var isChecked = $checkbox.is(':checked');
    
                // Set the button's state
                $button.data('state', (isChecked) ? "on" : "off");
    
                // Set the button's icon
                $button.find('.state-icon')
                    .removeClass()
                    .addClass('state-icon ' + settings[$button.data('state')].icon);
    
                // Update the button's color
                if (isChecked) {
                    $button
                        .removeClass('btn-default')
                        .addClass('btn-' + color + ' active');
                }
                else {
                    $button
                        .removeClass('btn-' + color + ' active')
                        .addClass('btn-default');
                }
            }
    
            // Initialization
            function init() {
    
                updateDisplay();
    
                // Inject the icon if applicable
                if ($button.find('.state-icon').length == 0) {
                    $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i> ');
                }
            }
            init();
        });
    });
    

    
    return {
        init: function () {
            //handlePromoBlock();
            handleParallax();
            handleScrolling();
            handleNavItemCurrent();
            handleHeaderPosition();
            handleBootstrap();
            handleCounter();
            handleGo2Top();
            handlePortfolioSorting();
            handleFancybox();
            handleMobiToggler();
            handleTwitter();
            valignCenterMessage();
            valignCenterPortfolio();
            handleTheme();
        },
    };
}();