require "asciidoctor"
require_relative "../lib/ankiConverter.rb"

Asciidoctor.convert_file "tests/testConverter.adoc", backend: "anki"