import validate from 'jquery-validation'

const form = $('.register__form')

$(form).validate({
    rules: {
        'register[email]': {
            required: true,
            email: true
        },
        'register[firstname]': {
            required: true
        },
        'register[surname]': {
            required: true
        },
        'register[patronymic]': {},
        'register[birth_date]': {
            date: true,
            required: true
        },
        'register[password]': {
            required: true,
            minlength: 6
        },
    },

    submitHandler: (form) => {
        const values = $(form).serialize()

        Rails.ajax({
            url: $(this).attr('action'),
            type: 'POST',
            data: values,
            dataType: "JSON",
            error: (data, textStatus, res) => {
                console.log(data)
                $(form).children('#register_email').addClass('error')
            }
        })
    },
    errorClass: 'error',
    errorPlacement: (error, element) => {
    }
})