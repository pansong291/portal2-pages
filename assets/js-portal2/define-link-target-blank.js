$(() => {
    $('#core-wrapper .post-content a[href]:not([target],[href^="#"],.anchor,.footnote,.reversefootnote,.img-link)').attr('target', '_blank')
    $('#core-wrapper .post-content a[href][target=_blank]').append('<i class="fa fa-external-link ml-1"/>')
})
