require "minitest/autorun"
require "minitest/pride"
require "./lib/character"

class CharacterTest < Minitest::Test
  

end

# pry(main)> require './lib/character'
# # => true
#
# pry(main)> kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
# # => #<Character:0x00007f98a4ba8dc8...>
#
# pry(main)> kitt.name
# # => "KITT"
#
# pry(main)> kitt.actor
# # => "William Daniels"
#
# pry(main)> kitt.salary
# # => 1000000
