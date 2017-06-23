jQuery(document).ready(function () {
    $(window).scroll(function(event) {
        $("#what-we-do ul li,section").each(function(i, el) {
            var el = $(el);
            if (el.visible(true)) {
                el.addClass("animate"); 
            }
            //  else {
            //     el.removeClass("animate"); 
            // }
        });
    });  
    $("#what-we-do h4 ~ p").wrapInner( "<span style='display:inline-block;vertical-align:text-top;width:90%;margin-right:-4px;' />");
});

function mobileNavigation() {
    $("#mobileNavigation").toggleClass("toggle");
}

$(window).resize(function(){
    $(".toggle").removeClass("toggle");
    $(".tcon-transform").removeClass("tcon-transform");
});
