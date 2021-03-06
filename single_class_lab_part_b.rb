class SportsTeam

  attr_reader :team_name, :players
  attr_accessor :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(player_name)
    @players.push(player_name)
    return @players.length
  end

  def set_coach(new_coach)
    @coach = new_coach
  end

  def check_player_name(player_name)
    for player in @players
      if player == player_name
        return true
      end
    end
    return false
  end

   def change_points(match_result)
    return @points += match_result
   end

  def check_team_members()
    return @players
  end

end
# ### Part B
#
# Now we would like you to make a class that represents a sports team.
#
# * Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# * For each property in the class make a getter method than can return them.
# * Create a setter method to allow the coach's name to be updated.
# * Refactor the class to use `attr_reader` or `attr_accessor` instead of your own getter and setter methods.
# * Create a method that adds a new player to the players array.
# * Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# * Add a points property into your class that starts at 0.
# * Create a method that takes in whether the team has won or lost and updates the points property for a win.
