$(document).ready(function () {

    $('form').submit(function (event) {
        event.preventDefault();
        let name = $('#name').val();
        let email = $('#email').val();
        let phone = $('#phone').val();
        let msg = $('#msg').val();

        if (name !== '' && email !== '' && phone !== '' && msg !== '') {
//                        console.log(name + "\n" + email + "\n" + name  + "\n" + url);
            $.ajax({
                url: 'php/ajax.php',
                type: $(this).attr('method'),
                data: $(this).serialize(),
                // processData: false,
                // cache:false,
                success: function (respon) {
                    let hh = JSON.parse(respon);
                    console.log(hh);
                    if (hh === true) {
                        $('form').addClass('d-none');
                        $('#ok').removeClass('d-none').addClass('d-block');
                    }
                }
            });
        }
    });
});
