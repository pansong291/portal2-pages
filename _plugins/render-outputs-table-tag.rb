# 根据一定格式生成 outputs 表格
module Portal2
  class RenderOutputsTableTagBlock < Liquid::Block
    def render(context)
      text = super
      caption = ''
      lines = String.new(text).split(/\s*?\n\s*[-+*]\s+/)
      index = 0
      tbody = '<tbody>'
      lines.each do |line|
        index += 1
        if index == 1
          caption = "<caption>#{line}</caption>"
          next
        end
        segments = String.new(line).split(/\s+?\|\s+?/)
        while segments.length < 6
          segments << ''
        end
        tbody += '<tr><td></td>'
        for i in 0..5
          tbody += "<td>#{segments[i]}</td>"
        end
        tbody += '</tr>'
      end
      tbody += '</tbody>'
      thead = "<thead><tr>#{Array.new(7, '<th></th>').join('')}</tr></thead>"
      "<table class=\"outputs-table\">#{caption}#{thead}#{tbody}</table>"
    end
  end
end

Liquid::Template.register_tag('outputs_table', Portal2::RenderOutputsTableTagBlock)
