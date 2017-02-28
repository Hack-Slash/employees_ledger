# array
# employee1 = ["Manila", "Campos", 80000, true]
# employee2 = ["Danilo", "Carter", 70000, false]

# # Manila Campos makes $80000 per year
# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year"

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year"

# hash with strings
# employee1 = {
#   "first_name" => "Manila",
#   "last_name" => "Campos",
#   "salary" => 80000,
#   "active" => true
# }

# employee2 = {
#   "first_name" => "Danilo",
#   "last_name" => "Carter",
#   "salary" => 70000,
#   "active" => false
# }

# p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year"

# p "#{employee2['first_name']} #{employee2['last_name']} makes $#{employee2['salary']} per year"

# # hash with symbols
# #  'traditional syntax'
# employee1 = {
#   :first_name => "Manila",
#   :last_name => "Campos",
#   :salary => 80000,
#   :active => true
# }

# # fancy js syntax
# employee2 = {
#   first_name: "Danilo",
#   last_name: "Carter",
#   salary: 70000,
#   active: false
# }

# p "#{employee1[:first_name]} #{employee1[:last_name]} makes $#{employee1[:salary]} per year"

# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year"

class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def salary
    @salary
  end

  def active
    @active
  end

  def active=(active_input)
    @active = active_input
  end

  def give_annual_raise
    @salary *= 1.05
  end

  def print_info
    p "#{first_name} #{last_name} makes $#{salary} per year"
  end
end

employee1 = Employee.new("Manila", "Campos", 80000, true)
employee2 = Employee.new("Danilo", "Carter", 70000, false)

employee1.print_info
# p employee2.give_annual_raise
# p employee1.give_annual_raise
p employee1.active
employee1.active = false
p employee1.active
