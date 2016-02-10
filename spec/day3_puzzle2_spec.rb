require 'spec_helper'
require 'day3_puzzle2'

RSpec.describe MovementTracker2 do

  it 'can solve the first example' do
    tracker = MovementTracker2.new('>')
    expect(tracker.number_of_houses_with_at_least_1_present).to eq(2)

    tracker = MovementTracker2.new('^v')
    expect(tracker.number_of_houses_with_at_least_1_present).to eq(3)

    tracker = MovementTracker2.new('^v^v^v^v^v')
    expect(tracker.number_of_houses_with_at_least_1_present).to eq(11)
  end

end
