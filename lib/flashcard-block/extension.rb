require 'asciidoctor/extensions'
include Asciidoctor

class FlashcardBlock < Extensions::BlockProcessor
  use_dsl
  named :flashcard
  on_context :example
  name_positional_attributes ["id", "type"]

  def process parent, reader, attrs
    create_block parent, :flashcard, reader.lines, attrs
  end
end