require('minitest/autorun')
require('minitest/rg')
require('../team.rb')

class TeamTest < MiniTest::Test

def test_get_name
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  assert_equal("Glasgow Gosberries", team.name)
end

def test_get_players
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  assert_equal(["Bob", "Greg", "Frank"], team.players)
end

def test_get_coach
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  assert_equal("Big Dave", team.coach)
end

def test_new_coach
  team = Team.new("Glasgow Gosberries", ["Bob", "Greg", "Frank"], "Big Dave")
  team.new_coach("Bigger Dave")
  assert_equal("Bigger Dave", team.coach)

end

end
