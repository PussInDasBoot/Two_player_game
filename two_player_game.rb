# two_player_game.rb
require 'pry'
require_relative 'player'
require_relative 'questions'

#runs the game
class Game
  attr_accessor 

  def initialize
    @players = [
      Player.new,
      Player.new
      ]
    @current_player = 0
  end
  def play 
    while @players.none? {|player| player.player_dead?} do
      new_question = Question.new
      ask(new_question)
      if new_question.validate(@response) 
        puts "Correct"
        @players[@current_player].gain_point
      else
        puts "Incorrect"
        @players[@current_player].lose_life
        puts "Player 1 score: #{@players[0].score} and 
        Player 2 score: #{@players[1].score}"
      end
      @current_player += 1
      if @current_player == @players.length
        @current_player = 0
      end
    end
  end

  def ask(question)
    puts "Player #{@current_player + 1}: What does #{question.expression} equal?"
    @response = gets.chomp.to_i
  end
end

first = Game.new
first.play
