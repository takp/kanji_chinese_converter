# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kanji_chinese_converter/version"

Gem::Specification.new do |spec|
  spec.name          = "kanji_chinese_converter"
  spec.version       = KanjiChineseConverter::VERSION
  spec.authors       = ["Takayoshi Nishida"]
  spec.email         = ["takayoshi.nishida@gmail.com"]

  spec.summary       = %q{Convert Japanese "Kanji" character to Chinese character.}
  spec.description   = %q{Convert Japanese "Kanji" character to Chinese character.}
  spec.homepage      = "https://github.com/takp/kanji_chinese_converter"
  spec.license       = "MIT"
  
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
