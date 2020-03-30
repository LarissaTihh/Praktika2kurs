// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
    'use strict';
    window.addEventListener('load', function () {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function (form) {
            form.addEventListener('submit', function (event) {
                if (form.checkValidity() === false) {
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add('was-validated');
            }, false);
        });
    }, false);
})();

$(document).ready(function () {

    $('form').submit(function (event) {
        event.preventDefault();
        let type = $(this).attr('method');
        let url = $(this).attr('action');
        let name = $('#name').val();
        let email = $('#email').val();
        let phone = $('#phone').val();
        let msg = $('#msg').val();

        if (name !== '' && phone !== '' && msg !== '' && email !== '') {
            console.log(name + "\n" + email + "\n" + type + "\n" + url);


        }


    });
});

