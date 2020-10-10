require_relative "flashcard-block/extension"
require_relative "flashcard-extractor/extension"

Extensions.register do
    block FlashcardBlock
    tree_processor FlashcardExtractor

end