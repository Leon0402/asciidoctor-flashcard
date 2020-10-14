require "asciidoctor"
require_relative "../lib/asciidoctor-flashcard.rb"

Asciidoctor.convert_file "tests/flashcards.adoc", backend: "anki", safe: :safe
