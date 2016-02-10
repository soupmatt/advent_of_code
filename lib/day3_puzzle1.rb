class MovementTracker
  attr_reader :data
  attr_accessor :houses_visited, :x_pos, :y_pos

  def initialize(input_data)
    @data = input_data
    @x_pos = 0
    @y_pos = 0
    @houses_visited = []
    visit_house
    run_moves
  end

  def visit_house
    houses_visited << [x_pos, y_pos]
  end

  def run_moves
    data.each_char do |move|
      case move
      when '>'
        @x_pos += 1
      when '<'
        @x_pos -= 1
      when '^'
        @y_pos += 1
      when 'v'
        @y_pos -= 1
      end
      visit_house
    end
  end

  def number_of_houses_with_at_least_1_present
    houses_visited.uniq.size
  end
end
