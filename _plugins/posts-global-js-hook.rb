# 在所有 post 末尾附上js脚本
Jekyll::Hooks.register :posts, :pre_render do |post|
  post.content = post.content + "\n\n<script src=\"#{post.site.baseurl}/assets/js-portal2/posts-global.js\"></script>\n"
end
