require 'spec_helper'
require 'day5_puzzle1'

RSpec.describe StringClassifier do
  it 'can do the examples' do
    expect(described_class.new('ugknbfddgicrmopn').nice?).to eq(true)
    expect(described_class.new('aaa').nice?).to eq(true)
    expect(described_class.new('jchzalrnumimnmhp').nice?).to eq(false)
    expect(described_class.new('haegwjzuvuyypxyu').nice?).to eq(false)
    expect(described_class.new('dvszwmarrgswjxmb').nice?).to eq(false)
    expect(described_class.new('').nice?).to eq(false)
  end

  describe '#contains_3_vowels' do
    it 'can recognize if there are 3 vowels in a string' do
      expect(described_class.new('').contains_3_vowels).to eq(false)
      expect(described_class.new('aaa').contains_3_vowels).to eq(true)
      expect(described_class.new('ugknbfddgicrmopn').contains_3_vowels).to eq(true)
      expect(described_class.new('fhroswyqqke').contains_3_vowels).to eq(false)
      expect(described_class.new('fhknrbxsswqk').contains_3_vowels).to eq(false)
    end
  end

  describe '#contains_a_repeated_letter' do
    it 'can recognize if there is a repeated letter' do
      expect(described_class.new('').contains_a_repeated_letter).to eq(false)
      expect(described_class.new('f').contains_a_repeated_letter).to eq(false)
      expect(described_class.new('aabbccdd').contains_a_repeated_letter).to eq(true)
      expect(described_class.new('aaa').contains_a_repeated_letter).to eq(true)
      expect(described_class.new('ugknbfddgicrmopn').contains_a_repeated_letter).to eq(true)
      expect(described_class.new('ugknbfdgicrmopn').contains_a_repeated_letter).to eq(false)
      expect(described_class.new('fhroswyqke').contains_a_repeated_letter).to eq(false)
      expect(described_class.new('fhknrbxsswqk').contains_a_repeated_letter).to eq(true)
    end
  end

  describe '#doesnt_contain_forbidden_strings' do
    it 'can recognize when forbidden strings are absent' do
      expect(described_class.new('').doesnt_contain_forbidden_strings).to eq(true)
      expect(described_class.new('ugknbfddgicrmopn').doesnt_contain_forbidden_strings).to eq(true)
      expect(described_class.new('aaa').doesnt_contain_forbidden_strings).to eq(true)
      expect(described_class.new('jchzalrnumimnmhp').doesnt_contain_forbidden_strings).to eq(true)
      expect(described_class.new('dvszwmabrrgswjxmb').doesnt_contain_forbidden_strings).to eq(false)
      expect(described_class.new('jcdhzalrnumimnmhp').doesnt_contain_forbidden_strings).to eq(false)
      expect(described_class.new('haegwjzuvuyypqu').doesnt_contain_forbidden_strings).to eq(false)
      expect(described_class.new('haegwjzuvuyyxyu').doesnt_contain_forbidden_strings).to eq(false)
    end
  end
end
