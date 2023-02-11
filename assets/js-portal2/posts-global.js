// 链接默认新窗口打开
$('#core-wrapper .post-content a[href]:not([target],[href^="#"],.anchor,.footnote,.reversefootnote,.img-link)').attr('target', '_blank')
$('#core-wrapper .post-content a[href][target=_blank]').append('<i class="fa fa-external-link ml-1"/>')
// 显示页面浏览量
$('div.post-meta > div.d-flex > div').prepend(`<span id="busuanzi_container_page_pv"><em id="busuanzi_value_page_pv" class="pageviews"><i class="fas fa-spinner fa-spin fa-fw"></i></em> 次浏览</span>`)
$(document.body).append(`<script async src="//busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>`)
