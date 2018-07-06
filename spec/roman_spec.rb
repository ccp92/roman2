# frozen_string_literal: true

require 'roman'

describe Roman do
  let(:roman) { Roman.new }
  describe 'given an input of 1' do
    it 'returns I' do
      expect(roman.convert(1)).to eq('I')
    end
  end

  describe 'given an input of 2' do
    it 'returns II' do
      expect(roman.convert(2)).to eq('II')
    end
  end

  describe 'given an input of 3' do
    it 'returns III' do
      expect(roman.convert(3)).to eq('III')
    end
  end

  describe 'given an input of 4' do
    it 'returns IV' do
      expect(roman.convert(4)).to eq('IV')
    end
  end

  describe 'given an input of 5' do
    it 'returns V' do
      expect(roman.convert(5)).to eq('V')
    end
  end

  describe 'given an input of 6' do
    it 'returns VI' do
      expect(roman.convert(6)).to eq('VI')
    end
  end

  describe 'given an input of 7' do
    it 'returns VII' do
      expect(roman.convert(7)).to eq('VII')
    end
  end

  describe 'given an input of 8' do
    it 'returns VIII' do
      expect(roman.convert(8)).to eq('VIII')
    end
  end

  describe 'given an input of 9' do
    it 'returns IX' do
      expect(roman.convert(9)).to eq('IX')
    end
  end

  describe 'given an input of 50' do
    it 'returns L' do
      expect(roman.convert(50)).to eq('L')
    end
  end

  describe 'given an input of 40' do
    it 'returns XL' do
      expect(roman.convert(40)).to eq('XL')
    end
  end

  describe 'given an input of 45' do
    it 'returns XLV' do
      expect(roman.convert(45)).to eq('XLV')
    end
  end

  describe 'given an input of 49' do
    it 'returns XLIX' do
      expect(roman.convert(49)).to eq('XLIX')
    end
  end

  describe 'given an input of 1600' do
    it 'returns MDC' do
      expect(roman.convert(1600)).to eq('MDC')
    end
  end
end
