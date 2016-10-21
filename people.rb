class People
  attr_writer :name
  def greeting
    "Hi, my name is #{@name}"
  end
  def initialize(name)
    @name = name
  end
end

class Student < People
  def learn
   "I get it!"
  end
end

class Instructor < People
  def teach
   "Everything in Ruby is an Object"
  end
end

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")

#call greeting method
puts chris.greeting
puts cristina.greeting

#call teach method
puts chris.teach
#call learn method
puts cristina.learn
#the reason why we cannot teach method on
#my student instance is because student
#instance doesnt have the permission to access
#the instance method in the Instructor class
