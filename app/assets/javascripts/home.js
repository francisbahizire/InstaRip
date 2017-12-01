
$(function(){
    $('.update').click(function(){
        console.log("clicked");
        var parentDiv = $(this).parents(".list-settings-btn");
        parentDiv.siblings(".update-list").slideToggle("fast");
    });
})