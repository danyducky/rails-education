const form = $('.curator__form')

$('.curator__form :checkbox').change(() => {
    if ($('.curator__form :checkbox:checked').length > 0) {
        $(".curator__form input[type='submit']").prop('disabled', false)
    } else {
        $(".curator__form input[type='submit']").prop('disabled', true)
    }
})
