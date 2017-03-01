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
employee1 = Employee.new({:first_name => "Manila", :last_name => "Campos", :salary => 80000, :active => true})

#  what you will see irl
employee2 = Employee.new(first_name: "Manila", last_name: "Campos", salary: 80000, active: true)

# employee2 = Employee.new("Danilo", "Carter", 70000, false)
# employee1.print_info
employee2.print_info

# p employee1.active
employee1.active = false
# p employee1.active
