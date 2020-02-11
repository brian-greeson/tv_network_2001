class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def shows
    @shows.sort {|a,b| a.name <=> b.name}
  end

  def main_characters
    # main character for the network if their salary is greater than 500_000 and their character name has no lowercase letters.
    show_characters = @shows.reduce([]) do |characters, show|
      characters << show.main_characters
      characters
    end
    show_characters.flatten.sort {|a,b| a.name <=> b.name}
  end

  def actors_by_show
    @shows.reduce({}) do |show_actors, show|
      show_actors[show] = show.actors
      show_actors
    end
  end

  def shows_by_actor
    all_actors.reduce({}) do |actors, actor| #<----------- ran out of time here :(
      # require "pry"; binding.pry
      actors[actor] = actors_by_show.select {|show| show.include?(actor)}
    # actors[actor] << @shows.select {|show| show.actors.include?(actor)}
    end
  end

  def all_actors
    actors = @shows.reduce([]) do |actors, show|
      actors << show.actors
      actors
    end
    actors.flatten.uniq
  end


end
