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
    str = "{"
    keys.each do |x|
      str += "#{x}=>#{@roster[x].sort}"
    end
    str += "}"
    str
  end
end
