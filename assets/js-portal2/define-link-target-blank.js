$(() => {
    const $links = $('#core-wrapper .post-content a[href]:not(.anchor):not([target])')
    $links.attr('target', '_blank')
})
