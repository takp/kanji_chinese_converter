require 'spec_helper'

RSpec.describe KanjiChineseConverter do
  it 'has a version number' do
    expect(KanjiChineseConverter::VERSION).not_to be nil
  end

  describe '#convert method' do
    context 'for Japanese word' do
      it 'returns correct converted text' do
        str = '東京都渋谷区渋谷'
        res = '东京都涩谷区涩谷'
        expect(KanjiChineseConverter.convert(str)).to eq(res)
      end
    end
    context 'for Japanese sentence' do
      it 'returns correct converted text' do
        str = '日本語の文章も漢字のみ変換可能です。問題ありません。'
        res = '日本语の文章も汉字のみ变换可能です。问题ありません。'
        expect(KanjiChineseConverter.convert(str)).to eq(res)
      end
    end
    context 'when blank text' do
      it 'returns blank text' do
        str = ''
        res = ''
        expect(KanjiChineseConverter.convert(str)).to eq(res)
      end
    end
  end
end
