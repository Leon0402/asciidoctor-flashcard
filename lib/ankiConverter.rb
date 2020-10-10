require 'asciidoctor'

class AnkiConverter < (Asciidoctor::Converter.for 'html5')
    register_for 'anki'

    def initialize(backend, opts = {})
        super
        outfilesuffix(".txt")
    end 

    def convert_document(node)
        return node.blocks.map {|b| b.convert }.join('')
    end

    def convert_open(node)
        content = node.content.tr("\n", "").gsub(",", "&#44;")
        if node.role == "question"
            return content + ","
        elsif node.role == "answer"
            return content + "\n"   
        end
    end
end