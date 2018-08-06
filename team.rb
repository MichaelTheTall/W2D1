class Team

  attr_accessor(:name, :players, :coach)

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def add_player(new)
    @players.push(new)
  end

  #   def name
  #     return @name
  #   end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def new_coach(new)
  #   @coach = new
  # end

end
