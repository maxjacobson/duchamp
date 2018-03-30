class Dog
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def untested_method
    puts "this should lower the coverage, huh"
  end

  def another_untested_method
    puts "this should lower the coverage, huh"
  end
end
