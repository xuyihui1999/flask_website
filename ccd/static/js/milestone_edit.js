// Edit function
$(function() {

    $('#saveEdit').click(function() {
        $.ajax({
            url: '/milestone_edit',
            data: $('form').serialize(),
            type: 'POST',
            success: function(response) {
                console.log(response);
            },
            error: function(error) {
                console.log(error);
            }
        });
    });
});
