//= require froala_editor.min.js
//= require plugins/align.min.js
//= require plugins/char_counter.min.js
//= require plugins/code_beautifier.min.js
//= require plugins/code_view.min.js
//= require plugins/colors.min.js
//= require plugins/emoticons.min.js
//= require plugins/entities.min.js
//= require plugins/file.min.js
//= require plugins/font_family.min.js
//= require plugins/font_size.min.js
//= require plugins/fullscreen.min.js
//= require plugins/image.min.js
//= require plugins/image_manager.min.js
//= require plugins/inline_style.min.js
//= require plugins/line_breaker.min.js
//= require plugins/link.min.js
//= require plugins/lists.min.js
//= require plugins/paragraph_format.min.js
//= require plugins/paragraph_style.min.js
//= require plugins/quick_insert.min.js
//= require plugins/quote.min.js
//= require plugins/save.min.js
//= require plugins/table.min.js
//= require plugins/url.min.js
//= require plugins/video.min.js
//= require languages/fr.js

$(document).on('ready pjax:success', function(e) {
    handleActiveBase();
    function handleActiveBase() {
        $('.sub-menu').each(function () {
            if ($(this).hasClass('active')) {
                $(this).parent().prev().addClass('active');
                $(this).parent().prev().addClass('open');
                $(this).parent().slideDown();
            }
        });
    }
    // home dashboard dark theme
    if(new RegExp('admin/'+'$').test(e.currentTarget.URL) || new RegExp('admin'+'$').test(e.currentTarget.URL)){
        $('.page-header, .content').addClass('dashboard');
    }
    else {
        $('.page-header, .content').removeClass('dashboard');
    }
});

$(function () {
    var width = $('.nav-stacked').width();
    $('.navbar-header').width(width);

    var array_menu = [];
    var lvl_1 = null;
    var count = 0;

    $('.sidebar-nav li').each(function (index, item) {
        if ($(item).hasClass('dropdown-header')) {
            lvl_1 = count++;
            array_menu[lvl_1] = []
        } else {
            $(item).addClass('sub-menu sub-menu-' + lvl_1);
        }
    });

    for (var i = 0; i <= array_menu.length; i++) {
        $('.sub-menu-' + i).wrapAll("<div class='sub-menu-container' />");
    }

    $('.sub-menu-container').hide();

    handleActiveBase();
    function handleActiveBase() {
        $('.sub-menu').each(function () {
            if ($(this).hasClass('active')) {
                $(this).parent().prev().addClass('active');
                $(this).parent().slideDown();
            }
        });
    }

    $('.dropdown-header').bind('click', function () {
        $('.dropdown-header').removeClass('open');
        $(this).addClass('open');

        $('.dropdown-header').removeClass('active');
        $('.sub-menu-container').stop().slideUp();
        $(this).toggleClass('active');
        $(this).next('.sub-menu-container').stop().slideDown();
    });

    $('.fr-wrapper').css('minHeight', '250px');
});