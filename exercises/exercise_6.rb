require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sheng", last_name: "Jin", hourly_rate: 80)
@store2.employees.create(first_name: "Joy", last_name: "Huang", hourly_rate: 60)
@store2.employees.create(first_name: "Ritta", last_name: "Zhou", hourly_rate: 70)