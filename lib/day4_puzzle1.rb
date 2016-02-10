require 'digest'

class AdventCoinGenerator
  attr_reader :seed_data

  def initialize(seed_data)
    @seed_data = seed_data
  end

  def find_next_coin
    input = 0
    begin
      input += 1
      result = digest(input)
    end until result.start_with?('00000')
    input
  end

  def digest(input)
    digest = Digest::MD5.new
    digest << seed_data
    digest << input.to_s
    digest.hexdigest
  end
end
