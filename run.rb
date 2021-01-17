require './lib/Manager.rb'
require './lib/Employee.rb'
require 'pry'


#Test your code here

michael = Manager.new("Michael Scott", "Regional", 40)
jan = Manager.new("Jan Levinson", "Corporate", 35)

jim = Employee.new("Jim Halpert", 60000, michael)
dwight = Employee.new("Dwight Schrute", 70000, michael)

toby = Employee.new("Toby Flenderson", 50000, jan)

pp michael.employees

# puts "Managers:
# #{Manager.all}"

# puts "Employees:
# #{Employee.all}"

#binding.pry
puts "done"

michael.hire_employee("Pam Halpert", 45000)
pp michael.employees

puts "done"

jim.promote("Sales", 32)

pp michael.employees

pp Manager.all

puts "DONE"
