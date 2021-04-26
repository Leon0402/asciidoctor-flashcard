require 'asciidoctor'
require 'yaml'

module Asciidoctor
  module Flashcard
    class AnkiConverter < (Asciidoctor::Converter.for 'html5')
      register_for 'anki'

      @@basic_flashcard_fields = 4

      def initialize(backend, opts = {})
        super
        outfilesuffix(".yaml")
      end 

      def convert_document(node)
        decks = {}
        node.blocks.each do |block|
          decks[block.attributes["deck"]] ||= [] 
          decks[block.attributes["deck"]].append(block.convert)
        end

        return {'decks' => decks.map { |deckname , flashcards| {'name': deckname, 'flashcards': flashcards } }}.to_yaml
      end

      def convert_flashcard(node)
        return  { "id" => node.attributes["fid"], 
                  "notetype" => "Basic Asciidoctor",
                  "fields" => [
                    { "front" => _convert_field(node.blocks[0])}, 
                    { "back" => _convert_field(node.blocks[1])}
                  ] 
                }
      end

      def _convert_field(block)
        return block.convert.tr("\n", "").gsub(",", "&#44;")
      end

      def convert_image(node)
        node.set_attr 'target', File.basename(node.attr 'target') 
        node.document.set_attr 'imagesdir', ''
        super
      end

      def convert_inline_image(node)
        node.set_attr 'target', File.basename(node.attr 'target') 
        node.document.set_attr 'imagesdir', ''
        super
      end
    end
  end
end