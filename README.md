# KanjiChineseConverter

Convert Japanese Kanji to Chinese character

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kanji_chinese_converter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kanji_chinese_converter

## Usage

```ruby
KanjiChineseConverter.convert("東京都渋谷区渋谷")
# => "东京都涩谷区涩谷"

KanjiChineseConverter.convert("日本語の文章も漢字のみ変換可能です。")
# => "日本语の文章も汉字のみ变换可能です。"
```

## Author

- Takayoshi Nishida \<nishida@zoono.tech\>

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Reference

- [Kanconvit - 簡体字と日本語漢字の相互変換ツール](http://kanconvit.ta2o.net/)
