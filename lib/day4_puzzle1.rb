require 'digest'

class AdventCoinGenerator
  attr_reader :seed_data, :prefix

  def initialize(seed_data, prefix: '00000')
    @seed_data = seed_data
    @prefix = prefix
  end

  def find_next_coin
    input = 0
    begin
      input += 1
      result = digest(input)
    end until result.start_with?(prefix)
    input
  end

  def digest(input)
    digest = Digest::MD5.new
    digest << seed_data
    digest << input.to_s
    digest.hexdigest
  end
end
