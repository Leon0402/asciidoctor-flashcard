require 'asciidoctor/extensions'

require_relative 'version'

module Asciidoctor
  module Flashcard
    module Extensions
      class ExtractFlashcardProcessor < Asciidoctor::Extensions::TreeProcessor
        def process document
            return unless document.blocks?
            process_blocks document
            nil
        end
        
        def process_blocks node
            node.blocks.each_with_index do |block, i|
                    process_blocks block if block.blocks?
                end
            end
        end
      end
    end
  end
end