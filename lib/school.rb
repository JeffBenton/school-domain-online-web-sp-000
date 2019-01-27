class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !roster[grade]
      roster[grade] = [name]
    else
      roster[grade] << name
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    keys = @roster.keys.sort
    keys.each do |x|
      puts @roster[x].sort
    end
  end
end
