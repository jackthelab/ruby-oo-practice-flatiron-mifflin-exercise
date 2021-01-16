require 'Manager.rb'
require 'pry'

class Employee

    attr_reader :name
    attr_accessor :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        self.manager.hire_employee(self.name, self.salary)

        @@all.push(self)
    end

    def tax_bracket
        #arr of all employees
        #whose salary +- 1000...
        #of self
        @@all.select { |em| self.salary - 1000 < em.salary < self.salary + 1000 }

        end
    end

    def self.all
        @@all
    end

    def self.paid_over(num)
        #return employees with 
        #salary > num

        @@all.selct {|em| em.salary > num }
    end

    def self.find_by_department(department)
        #returns first employee whose
        #manager is in department
        ##Manaager.all.find
        manager = Manager.all.find { |manager| manager.department == department }
    end

end

binding.pry

puts "done"
