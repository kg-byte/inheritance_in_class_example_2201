require './lib/employee'
require 'rspec'

RSpec.describe Employee do

   employee1 = Employee.new({id: 1, first_name: "Bill", last_name: "Nye", full_time: false, monthly_salary: 6 })
  before(:each) do
    employee1 = Employee.new({id: 1, first_name: "Bill", last_name: "Nye", full_time: false, monthly_salary: 6 })
  end
  it "initializes" do
    expect(employee1).to be_a(Employee)
  end

  it "has a full_time status" do
    expect(employee1)
end
