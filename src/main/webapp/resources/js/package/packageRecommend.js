$(document).ready(function() {
    $(".btn_search").on('click', function() {
        var searchWord = $(".btn_search").val();

        $.ajax({
            url: '/package/search?query=' + searchWord,
            type: "GET",
            success: {

            },
            error : {
            }
        })
    })
});
