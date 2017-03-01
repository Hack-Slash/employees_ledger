module EmailReportable
  # in here i can just put methods in
  def send_report
    p "I will send the report now"
    #  beep boop beep boop
    p "Tottally just sent that report"
  end

  def accidentally_reply_all
    p "Hey Joe I think that was a stupid idea"
  end
end

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def give_annual_raise
    @salary *= 1.05
  end

  def print_info
    p "#{first_name} #{last_name} makes $#{salary} per year"
  end
end

# super explicit
employee1 = Employee.new({:last_name => "Campos", :salary => 80000, :first_name => "Manila", :active => true})

#  what you will see irl
employee2 = Employee.new(first_name: "Danilo", last_name: "carter", salary: 70000, active: false)


class Manager < Employee
  include EmailReportable
  attr_reader :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

manager1 = Manager.new(first_name: "Sophie", last_name: "Orioli", salary: 100000, active: true, employees: [employee1, employee2])
# manager1.print_info

# p employee1.active
# p employee2.active
# manager1.fire_all_employees
# # p employee1.active
# p employee2.active


# an intern can do everything an employee can do and they can also send a report



class Intern < Employee
  include EmailReportable
end

intern1 = Intern.new({first_name: "Mike", last_name: "Walsh", salary: 0, active: true})

# intern1.accidentally_reply_all
p manager1

