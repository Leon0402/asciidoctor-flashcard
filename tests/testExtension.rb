require "asciidoctor"
require_relative "../lib/asciidoctor-flashcard.rb"

Asciidoctor.convert_file "tests/testExtension.adoc", {:safe => :safe}