require 'asciidoctor/extensions'

module Asciidoctor
  module Flashcard
    module Extensions
      class ExtractFlashcardProcessor < Asciidoctor::Extensions::TreeProcessor
        def process document
          return unless document.blocks?
          # process_blocks document

          # flashcardBlocks = document.find_by context: :open, role: "question"
          # print flashcardBlocks[0].context 

            # document.blocks.each_with_index do |block, i|
            #     flashcardBlocks = block.find_by context: :open, role: "question"
            #     flashcardBlocks += block.find_by context: :open, role: "answer"

            #     block.blocks.clear() 
            #     block.blocks.push(flashcardBlocks)
            # end
        end

        # def process_blocks node
        #   node.blocks.each_with_index do |block, i|
        #     print(node.level, block, "\n")
        #     process_blocks block if block.blocks?
        #   end
        # end
      end
    end
  end
end