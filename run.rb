require './lib/Manager.rb'
require './lib/Employee.rb'
require 'pry'


#Test your code here

michael = Manager.new("Michael Scott", 80000, 40)
jan = Manager.new("Jan Levinson", 120000, 35)

jim = Employee.new("Jim Halpert", 60000, michael)
dwight = Employee.new("Dwight Schrute", 70000, michael)

toby = Employee.new("Toby Flenderson", 50000, jan)


#binding.pry
puts "done"
