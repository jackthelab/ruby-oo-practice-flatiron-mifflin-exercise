require './lib/Manager.rb'

class Employee

    attr_reader :name
    attr_accessor :salary, :manager

    @@all = []
    @@former_employees = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        @@all.push(self)
    end

    def tax_bracket
        #arr of all employees
        #whose salary +- 1000...
        #of self
        @@all.select { |em| em.salary >= self.salary - 1000 && em.salary <= self.salary + 1000 && em != self }

    end

    #not returning the right thing...
    def self.all
        @@all
    end

    def self.paid_over(num)
        #return employees with 
        #salary > num

        @@all.select {|em| em.salary > num }
    end

    def self.find_by_department(department)
        #returns first employee whose
        #manager is in department
        ##Manaager.all.find
        manager = Manager.all.find { |manager| manager.department == department }
        manager.employees.first
    end

    def promote(department, age)
        #new Manager instance
        #use self.name, department, age
        new_manager = Manager.new(self.name, department, age)

        @@all = self.class.all.select { |employee| employee != self }
        @@former_employees.push(self)
    end

end
