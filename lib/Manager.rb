require './lib/Employee.rb'

class Manager

    attr_reader :name, :age, :employees
    attr_accessor :department

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age

        @@all.push(self)

    end

    def employees
        Employee.all.select { |employee| employee.manager == self }
    end

    def hire_employee(name, salary)
        #will probably need a new
        #instance of Employee class
        #use self for manager param
        #put in employees
        new_employee = Employee.new(name, salary, self)
        self.employees.push(new_employee)
    end

    def self.all
        @@all
    end

    def self.all_departments
        all_departments = self.all.map { |manager| manager.department }
    end

    def self.average_age
        total_age = 0
        self.all.each { |manager| total_age += manager.age }
        average_age = total_age/self.all.length
    end

end



