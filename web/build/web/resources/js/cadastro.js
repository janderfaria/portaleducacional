$(document).ready(function() {
    $("#estado").change(function(){
        $.ajax({
            type: 'POST',
            data: $('#estado').val()
        });
    });
});