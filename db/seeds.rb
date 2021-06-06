# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.delete_all
10.times do
  employee = Employee.new(first_name: Forgery(:name).first_name, last_name: Forgery(:name).last_name, annual_salary: Forgery(:monetary).money(min: 50000, max: 150000).to_i, rates: "#{rand(1..20)}%")
  employee.save
end

TaxRange.delete_all
TaxRange.create!(min_income: 0,       max_income: 20000,  rates: 0.0   , tax_from_lower_range: 0)
TaxRange.create!(min_income: 20001,   max_income: 40000,  rates: 0.10  , tax_from_lower_range: 0)
TaxRange.create!(min_income: 40001,   max_income: 80000,  rates: 0.20 , tax_from_lower_range: 2000)
TaxRange.create!(min_income: 80001,   max_income: 180000, rates: 0.30  , tax_from_lower_range: 8000)
TaxRange.create!(min_income: 180000,  max_income: 2147483646, rates: 0.40  , tax_from_lower_range: 10000)

