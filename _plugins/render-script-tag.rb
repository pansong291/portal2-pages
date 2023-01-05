# 使用 Liquid 标签渲染 script 标签
module Portal2
  class RenderScriptTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "<script src=\"#{context.registers[:site].baseurl}/assets/js-portal2/#{@text}\"></script>"
    end
  end
end

Liquid::Template.register_tag('script', Portal2::RenderScriptTag)
