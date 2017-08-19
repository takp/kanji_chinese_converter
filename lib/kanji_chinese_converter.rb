require "kanji_chinese_converter/version"
require "kanji_chinese_converter/ja_zh_cn"

module KanjiChineseConverter
  def self.convert(str)
    data = JaZhCn::JA_ZH_CN
    reg = Regexp.new(data.keys.join('|'))
    str.gsub(reg, data)
  end
end
