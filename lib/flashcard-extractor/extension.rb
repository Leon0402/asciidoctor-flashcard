require 'asciidoctor/extensions'
include Asciidoctor

class FlashcardExtractor < Extensions::TreeProcessor
  def process document
    return unless document.blocks?
    flashCards = document.find_by(context: :flashcard)
    document.blocks.replace(flashCards)
  end
end