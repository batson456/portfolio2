$(document).ready(function(){
    // Alerts
    function close(){
        $('.alert').alert('close');
    };

    $(function(){
        $('[placeholder]').defaultValue();
    });

    // hide #back-top first
    $("#back-top").hide();
    
    // fade in #back-top
    $(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 100) {
                $('#back-top').fadeIn();
            } else {
                $('#back-top').fadeOut();
            }
        });

        // scroll body to 0px on click
        $('#back-top a').click(function () {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
    });

    // Create the gallery rollover effect
    $(function() {
        // OPACITY OF BUTTON SET TO 0%
        $(".roll").css("opacity","0");
 
        // ON MOUSE OVER
        $(".roll").hover(function () {
 
            // SET OPACITY TO 70%
            $(this).stop().animate({
               opacity: .5
            }, "slow");
        },
 
        // ON MOUSE OUT
        function () {
 
            // SET OPACITY BACK TO 0%
            $(this).stop().animate({
                opacity: 0
            }, "slow");
        });
    });

}); // End document.ready

// Twitter feed javascript
jQuery(function($){
    $(".tweet").tweet({
        username: "BryceBatson1",
        join_text: "auto",
        avatar_size: 32,
        count: 3,
        auto_join_text_default: "we said,", 
        auto_join_text_ed: "we",
        auto_join_text_ing: "we were",
        auto_join_text_reply: "we replied to",
        auto_join_text_url: "we were checking out",
        loading_text: "loading tweets..."
    });
});