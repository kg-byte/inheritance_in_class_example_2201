require './employee'
class Director < Employee

  attr_reader :id, :first_name, :last_name, :full_time, :monthly_salary, :benefits
  def initialize(employee)
    super(employee)
  end


  def benefits
    @benefits = super
      @benefits[:vacation_days] +=10
      @benefits[:stock_option] = true
      # add stock_option to director

  end

  def annual_salary
    salary = super
    (salary * 1.1).round(2)
  end





end
