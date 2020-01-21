require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../single_class_lab_part_b')
class TestSingleClassLab < Minitest::Test

  def setup
    @sports_team = SportsTeam.new("Malcolm's Mad Dogs", ["Malcolm", "Andy", "Luke", "Roosa", "Ahmed"], "Calum", 0)
  end

  def test_team_name
    assert_equal("Malcolm's Mad Dogs", @sports_team.team_name)
  end

  def test_number_of_players
    assert_equal(5, @sports_team.players.length())
  end

  def test_coach
    assert_equal("Calum", @sports_team.coach)
  end

  def test_set_coach()
    assert_equal("Fraser", @sports_team.set_coach("Fraser"))
  end

  def test_add_new_player
    assert_equal(6, @sports_team.add_new_player("John"))
  end

  def test_check_player_name__true
    assert_equal(true, @sports_team.check_player_name("Roosa"))
  end

  def test_check_player_name__false
    assert_equal(false, @sports_team.check_player_name("Emma"))
  end

def test_can_get_points
  assert_equal(0, @sports_team.points())
end


  def test_change_points__win
    assert_equal(1, @sports_team.change_points(1))
  end

  def test_change_points__loss
    assert_equal(0, @sports_team.change_points(0))
  end

end
