require "asciidoctor"
require_relative "../lib/asciidoctor-flashcard.rb"
require_relative "../lib/ankiConverter.rb"

Asciidoctor.convert_file "tests/flashcardExtraction.adoc", backend: "anki"