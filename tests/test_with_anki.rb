require "asciidoctor"
require_relative "../lib/asciidoctor-flashcard.rb"

Asciidoctor.convert_file "tests/flashcards.adoc", backend: "anki", safe: :safe, to_dir: 'build', mkdirs: :mkdirs
Asciidoctor.convert_file "tests/flashcardsInDocument.adoc", backend: "anki", safe: :safe, to_dir: 'build', mkdirs: :mkdirs
Asciidoctor.convert_file "tests/flashcards_sub.adoc", backend: "anki", safe: :safe, to_dir: 'build', mkdirs: :mkdirs