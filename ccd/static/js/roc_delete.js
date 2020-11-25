// Delete function
/*
Documentation on the ajax function can be found at http://api.jquery.com/jquery.ajax/
There is also some good stuff at https://www.w3schools.com/jquery/ajax_ajax.asp
Here is an example that is similar to this https://codehandbook.org/python-flask-jquery-ajax-post/

This function acts on the button in collab_delete.html that is marked '#saveDelete' it then sends the 
data to the 'collab_delete' view and instead of rendering the 'collab_delete.html' it goes through the if statement and 
deletes the selected member. The 'action' part of 'collab_delete.html' sends this data back to 'collab_delete' view

*/

$(function() {

    $('#saveDelete').click(function() {
        $.ajax({
            url: '/roc_member',
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
