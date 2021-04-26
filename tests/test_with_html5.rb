require "asciidoctor"
require_relative "../lib/asciidoctor-flashcard.rb"

Asciidoctor.convert_file "tests/flashcards.adoc", safe: :safe, to_dir: 'build', mkdirs: :mkdirs
Asciidoctor.convert_file "tests/flashcardsInDocument.adoc", safe: :safe, to_dir: 'build', mkdirs: :mkdirs
Asciidoctor.convert_file "tests/flashcards_sub.adoc", safe: :safe, to_dir: 'build', mkdirs: :mkdirs