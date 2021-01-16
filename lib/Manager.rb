require 'Employee.rb'
class Manager

    attr_reader :name, :age, :employees
    attr_accessor :department

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age

        @@all.push(self)

        @employees = []
    end

    def hire_employee(name, salary)
        #will probably need a new
        #instance of Employee class
        #use self for manager param
        #put in employees
    end

    def self.all
        @@all
    end

    def self.all_departments
        #
    end

    def self.average_age
        #
    end

end



