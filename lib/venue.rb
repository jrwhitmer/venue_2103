class Venue
  attr_reader :name,
              :capacity,
              :patrons
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(new_patron)
    @patrons << new_patron
  end

  def yell_at_patrons
    yelled_at_patrons = []
    @patrons.each do |patron|
      yelled_at_patrons << patron.upcase
    end
    return yelled_at_patrons
  end

  def over_capacity
    if @patrons.length <= 4
      return false
    else
      return true
    end
  end

  def kick_out
    while @patrons.length > 4
      @patrons.delete_at(4)
    end
    @patrons 
  end
end
