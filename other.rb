module Other
  def override
    puts "OTHER override"
  end

  def implicit
    puts "OTHER implicit"
  end

  def Other.altered()
    puts "OTHER altered"
  end
end

class Child3
  include Other

  def override()
    puts "Child override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child3.new

son.implicit
son.altered
son.override
