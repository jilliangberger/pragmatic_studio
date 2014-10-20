#!/usr/bin/env ruby

require_relative 'player'

class Game
  attr_reader :title
  def initialize(title)
    @title = title
    @players = []
  end
  def play
    puts "There are #{@players.size} players in #{title}: "
    @players.each do |player|
      puts player
    end
    @players.each do |player|
      die = Die.new
      case die.roll
      when 1..2
        puts player.blam
      when 3..4
        puts "#{player.name} was skipped."
      else
        player.w00t
      end
      puts player
    end
  end
  def add_player(a_player)
    @players << a_player
  end
end
