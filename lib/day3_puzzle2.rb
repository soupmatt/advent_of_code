class MovementTracker2
  attr_reader :data
  attr_accessor :houses_visited, :santa_x_pos, :santa_y_pos, :robo_x_pos, :robo_y_pos, :santa_move

  def initialize(input_data)
    @data = input_data
    @santa_x_pos = 0
    @santa_y_pos = 0
    @robo_x_pos = 0
    @robo_y_pos = 0
    @houses_visited = [[0,0]]
    @santa_move = true
    run_moves
  end

  def visit_house
    if santa_move
      houses_visited << [santa_x_pos, santa_y_pos]
    else
      houses_visited << [robo_x_pos, robo_y_pos]
    end
    @santa_move = !@santa_move
  end

  def run_moves
    data.each_char do |move|
      case move
      when '>'
        if santa_move
          @santa_x_pos += 1
        else
          @robo_x_pos += 1
        end
      when '<'
        if santa_move
          @santa_x_pos -= 1
        else
          @robo_x_pos -= 1
        end
      when '^'
        if santa_move
          @santa_y_pos += 1
        else
          @robo_y_pos += 1
        end
      when 'v'
        if santa_move
          @santa_y_pos -= 1
        else
          @robo_y_pos -= 1
        end
      end
      visit_house
    end
  end

  def number_of_houses_with_at_least_1_present
    houses_visited.uniq.size
  end
end
