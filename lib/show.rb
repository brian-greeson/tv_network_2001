class Show
  attr_reader :name, :creator, :characters
  def initialize(name, creator, characters)
    @name = name
    @creator =creator
    @characters = characters
  end

  def characters
    @characters.sort {|a,b| a.name <=> b.name}
  end

  def actors
    characters.map { |character| character.actor  }.sort
  end

  def total_salary
    characters.reduce(0) {|salary_total, character| salary_total + character.salary}
  end

  def highest_paid_actor
    characters.max { |a, b| a.salary <=> b.salary }.actor
  end

  def main_characters
    characters.select { |character| character.salary > 500_000 &&
                                    character.name.casecmp?(character.name.upcase)}
  end

end
