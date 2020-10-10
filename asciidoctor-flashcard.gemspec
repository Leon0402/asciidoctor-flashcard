require_relative 'lib/version.rb'

Gem::Specification.new do |s|
  s.name          = "asciidoctor-flashcard"
  s.version       = Asciidoctor::Flashcard::VERSION
  s.authors       = ["Leon De Andrade"]
  s.email         = ["leondeandrade@hotmail.com"]
  s.summary       = "Anki Flashcard support in Asciidoctor"
  s.description   = "An extension and custom converter for asciidoctor documents to extract flashcards from the documen, which can be imported to anki"
  s.homepage      = "https://github.com/Leon0402/asciidoctor-flashcard"
  s.license       = "MIT"
  s.files       = ["lib/version.rb", "lib/flashcardExtractor.rb"]
  s.metadata = {
    'bug_tracker_uri' => 'https://github.com/Leon0402/asciidoctor-flashcardissues',
    'changelog_uri' => 'https://github.com/Leon0402/asciidoctor-flashcard/blob/master/CHANGELOG.adoc',
    'source_code_uri' => 'https://github.com/Leon0402/asciidoctor-flashcard'
  }
  #s.add_development_dependency "rake", "~> 13.0"
  #s.add_runtime_dependency "asciidoctor", "~> 1.5"
end