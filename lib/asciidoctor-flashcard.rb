require_relative 'extension'

Asciidoctor::Extensions.register do
    tree_processor Asciidoctor::Flashcard::Extensions::ExtractFlashcardProcessor
end