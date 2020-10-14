require 'asciidoctor/extensions'
include Asciidoctor

module Asciidoctor
  module Flashcard
    class FlashcardExtractor < Extensions::TreeProcessor
      def process document
        return unless document.blocks?
        flashCards = document.find_by(context: :flashcard).each { |flashcard|  flashcard.parent = document}
        document.blocks.replace(flashCards)
      end 
    end
  end
end