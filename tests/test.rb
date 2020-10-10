require 'asciidoctor'

Asciidoctor.convert_file 'tests/test.adoc', {:safe => :safe}