require 'asciidoctor/extensions'

module Asciidoctor
  module Flashcard
    class FlashcardBlock < Extensions::BlockProcessor
      use_dsl
      named :flashcard
      on_context :example
      name_positional_attributes ["id", "type"]

      def process parent, reader, attrs
        if parent.document.backend == "anki"
          create_block parent, :flashcard, reader.lines, attrs, content_model: :compound
        else
          create_example_block parent, reader.lines, attrs, content_model: :compound
        end
      end
    end
  end
end