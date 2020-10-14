require 'asciidoctor'

module Asciidoctor
  module Flashcard
    class AnkiConverter < (Asciidoctor::Converter.for 'html5')
      register_for 'anki'

      @@basic_flashcard_fields = 4

      def initialize(backend, opts = {})
        super
        outfilesuffix(".txt")
      end 

      def convert_document(node)
        return node.blocks.map {|b| b.convert }.join('')
      end

      def convert_flashcard(node)
        if node.attributes["type"].nil? || node.attributes["type"] == "basic" 
          empty_fields = ',' * (@@basic_flashcard_fields - node.blocks.size() - 1)
        end

        return node.attributes["id"] + "," + node.blocks.map {|b| b.convert.tr("\n", "").gsub(",", "&#44;") }.join(",") + empty_fields + "\n"
      end
    end
  end
end