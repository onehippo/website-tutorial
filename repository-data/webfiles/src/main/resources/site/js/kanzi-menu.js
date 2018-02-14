"use strict";

// selection from the kanzi.js: makes that the mobile menu functions

jQuery(document).ready(function($) {

    $('.mobile-menu-button').click(function() {
        $('.mobile-nav').toggle();
    });

    /* Mobile Nav */
    $('.header .mobile-nav ').append($('#main-navigation').html());
    $('.header .mobile-nav li').bind('click', function(e) {

        var $this = $(this);
        var $ulKid = $this.find('>ul');
        var $ulKidA = $this.find('>a');

        if ($ulKid.length === 0 && $ulKidA[0].nodeName.toLowerCase() === 'a') {
            window.location.href = $ulKidA.attr('href');
        }
        else {
            $ulKid.toggle(0, function() {
                if ($(this).css('display') === 'block') {
                    $ulKidA.find('.icon-chevron-down').removeClass('icon-chevron-down').addClass('icon-chevron-up');
                }
                else {
                    $ulKidA.find('.icon-chevron-up').removeClass('icon-chevron-up').addClass('icon-chevron-down');
                }
            });
        }

        e.stopPropagation();

        return false;
    });

});