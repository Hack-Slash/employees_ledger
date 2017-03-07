require './employee.rb'
require './email_reportable'
require './intern.rb'
require './manager.rb'

# super explicit
employee1 = Actualize::Employee.new({:last_name => "Campos", :salary => 80000, :first_name => "Manila", :active => true})

#  what you will see irl
employee2 = Actualize::Employee.new(first_name: "Danilo", last_name: "carter", salary: 70000, active: false)



intern1 = Actualize::Intern.new({first_name: "Mike", last_name: "Walsh", salary: 0, active: true})

intern1.accidentally_reply_all

# p employee1.active
# p employee2.active
# manager1.fire_all_employees
# # p employee1.active
p employee2.active


# an intern can do everything an employee can do and they can also send a report


manager1 = Actualize::Manager.new(first_name: "Sophie", last_name: "Orioli", salary: 100000, active: true, employees: [employee1, employee2])
# manager1.print_info
# manager1.send_report
# p employee1.active
p employee2.active
manager1.fire_all_employees
# p employee1.active
p employee2.active
manager1.send_report
