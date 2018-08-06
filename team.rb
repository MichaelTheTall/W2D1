class Team

  attr_accessor(:name, :players, :coach)

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(new)
    @players.push(new)
  end

  def check_player(name)
    return @players.include?(name)
  end

  def win
    @points += 1
  end
  
end
