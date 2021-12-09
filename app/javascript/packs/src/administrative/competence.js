const form = $('.competence__new__form')
const teacher = $('#binding_user_id')
const group = $('#binding_group_id')
const subjects = $('#binding_subject_id')

$(document).ready(() => {
    fetchSubjects()
})

teacher.change(() => {
    fetchSubjects()
})

group.change(() => {
    fetchSubjects()
})

const fetchSubjects = () => {
    Rails.ajax({
        type: "POST",
        url: "/api/competence/subjects",
        data: $.param({
            teacher_id: teacher.val(),
            group_id: group.val()
        }),
        success: (data) => {
            console.log(data)
            subjects.empty()
            data.forEach((elem, index) => {
                const option = new Option(elem.caption, elem.id, false, index === 0)
                subjects.append(option)
            })
        }
    })
}