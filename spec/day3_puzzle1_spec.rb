require 'spec_helper'
require 'day3_puzzle1'

RSpec.describe MovementTracker do

  it 'can solve the first example' do
    tracker = MovementTracker.new('>')
    expect(tracker.number_of_houses_with_at_least_1_present).to eq(2)

    tracker = MovementTracker.new('^>v<')
    expect(tracker.number_of_houses_with_at_least_1_present).to eq(4)

    tracker = MovementTracker.new('^v^v^v^v^v')
    expect(tracker.number_of_houses_with_at_least_1_present).to eq(2)
  end

end
