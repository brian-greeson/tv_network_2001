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
    show_characters = @shows.reduce([]) do |characters, show|
      characters << show.characters
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

end
