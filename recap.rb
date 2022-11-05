my_array = [0, 3, 7, ["this string", 6]]

#   1.1. Print element "this string" of my_array on the terminal
puts my_array[3][0]

#   1.2. Print every element of my_array
my_array.each do |elm|
  puts elm
end

#   1.3. Print every element with associated index
my_array.each_with_index do |elm, index|
  puts "#{index + 1} - #{elm}"
end

#   1.4. Transform my_array with elements appended by "elm - "
new_array = my_array.map do |element|
  "elm - #{element}"
end

puts new_array

# 2. Create an hash representing a person with a name, age, profession and salary:
miguel = {
  name: "Miguel",
  age: 28,
  profession: "football_player",
  salary: 4_000
}

#   2.1. Print the value of the name and age on the terminal
puts "#{miguel[:name]} - #{miguel[:age]}"

# 3. Define a method that takes the person variable with keys name, age, profession and salary
#    returns true if that person has a good salary for its profession and false otherwise:
AVG_SALARIES = {
  fullstack_developer: 1_800,
  nurse: 1_200,
  football_player: 300_000,
  physician: 3_000,
  musician: 0.001
}

def good_salary(person)
  job = person[:profession].to_sym
  salary = person[:salary]

  average_salary = AVG_SALARIES[job]

  salary < average_salary ? "below average" : "above average"
end

#   3.1. Run that function on the person variable created in the previous exercise and print if the person has a good salay or not on the terminal:
puts good_salary(miguel)


# 4. Create a class Person with attributes name, age, profession and salary:
class Person
  def initialize(name, age, profession, salary)
    @name = name
    @age = age
    @profession = profession
    @salary = salary
  end
end

#   4.1. Instantiate that person with specific attributes:
miguel = Person.new(name: "Miguel", age: 28, profession: "fullstack_developer", salary: 1_600)

# 5. Games challenge
#    5.0. Understand router to check what we need to implement
#    5.1. Create table games with name, genre & address (inherit from ActiveRecord::Migration[7.0])
#    5.2. Create model (inherit from ActiveRecord::Base)
#    5.3. Generate 5 games as seeds (use faker if you want)
#    5.4. Start action by action (controller > view > router)
#    5.5. Run lib/app.rb to test it.
