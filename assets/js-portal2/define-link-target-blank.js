$(() => {
    $('#core-wrapper .post-content a[href][target=_blank]:not(.anchor)').append('<i class="fa fa-external-link ml-1"/>')
    $('#core-wrapper .post-content a[href]:not(.anchor):not([target])').attr('target', '_blank').append('<i class="fa fa-external-link ml-1"/>')
})
