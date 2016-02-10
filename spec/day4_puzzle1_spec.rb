require 'spec_helper'
require 'day4_puzzle1'

RSpec.describe AdventCoinGenerator do

  describe '#digest' do
    it 'can compute the examples' do
      generator = AdventCoinGenerator.new('abcdef')
      expect(generator.digest(609043)).to start_with("00000")

      generator = AdventCoinGenerator.new('pqrstuv')
      expect(generator.digest(1048970)).to start_with("00000")
    end
  end

  it 'can run the examples' do
    generator = AdventCoinGenerator.new('abcdef')
    expect(generator.find_next_coin).to eq(609043)

    generator = AdventCoinGenerator.new('pqrstuv')
    expect(generator.find_next_coin).to eq(1048970)
  end
end
