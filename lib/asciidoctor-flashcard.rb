require_relative "asciidoctor-flashcard/flashcard_block.rb"
require_relative "asciidoctor-flashcard/flashcard_extractor.rb"
require_relative "asciidoctor-flashcard/anki_converter.rb"
require_relative "asciidoctor-flashcard/version.rb"

Extensions.register do
    block Asciidoctor::Flashcard::FlashcardBlock

    if document.backend == "anki"
        tree_processor Asciidoctor::Flashcard::FlashcardExtractor
    end
end