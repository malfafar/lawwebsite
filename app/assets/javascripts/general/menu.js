
$(document).on('ready page:load', function()
{
    $(".burger").click(function()
    {
        $(".nav_list").toggleClass("active_menu");
    });
});

$(window).resize(function(){
    $(".nav_list").removeClass("active_menu");
});
