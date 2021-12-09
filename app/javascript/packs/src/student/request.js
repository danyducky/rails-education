const form = $('.student__request__form')
const specialitySelect = $('#request_speciality_id')
const groupSelect = $('#request_group_id')

specialitySelect.ready(() => {
    fetchGroups(specialitySelect.val())
})

specialitySelect.change(() => {
    fetchGroups(specialitySelect.val())
})

form.submit(() => {
    const values = form.serializeArray()

    Rails.ajax({
        url: form.attr('action'),
        type: 'POST',
        data: values,
        dataType: 'JSON',
        error: () => {
            console.log('Что-то пошло не так в request.js')
        }
    })
})

const fetchGroups = (specialityId) => {
    Rails.ajax({
        url: `/api/group/speciality/${specialityId}`,
        type: 'GET',
        dataType: 'JSON',
        success: (data) => {
            groupSelect.empty()
            data.forEach((elem, index) => {
                const option = new Option(elem.caption, elem.id, false, index === 0)
                groupSelect.append(option).trigger('change')
            })
        }
    })
}