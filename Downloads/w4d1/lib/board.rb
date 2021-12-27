class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {[]}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0...13).each {|i| @cups[i] = Array.new(4) {:stone} unless i == 6}
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' unless start_pos >= 0 and start_pos < 14
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    i = 0
    until @cups[start_pos].empty?
      @cups[start_pos + i] << @cups[start_pos].shift if 
      i += 1
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
