import validate from 'jquery-validation'

const form = $('.login__form')

$(form).validate({
    rules: {
        'user[email]': {
            required: true,
            email: true
        },
        'user[password]': {
            required: true,
            minlength: 6
        }
    },

    submitHandler: (form) => {
        const values = $(form).serialize()

        Rails.ajax({
            url: $(this).attr('action'),
            type: 'POST',
            data: values,
            dataType: "JSON",
            error: (data, textStatus, res) => {
                $('#user_email').addClass('error')
                $('#user_password').addClass('error')
            }
        })
    },
    errorClass: 'error',
    errorPlacement: (error, element) => {}
})