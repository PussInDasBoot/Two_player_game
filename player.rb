# player.rb

class Player
  attr_reader :score, :lives
  def initialize
    @score = 0
    @lives = 3
  end
  #adds point to score
  def gain_point
    @score += 1
  end
  #subtracks life
  def lose_life
    @lives -=1
  end

  def player_dead?
    lives == 0
  end
end