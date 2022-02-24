require './employee'
class Director < Employee

  attr_reader :id, :first_name, :last_name, :full_time, :monthly_salary, :benefits
  def initialize(employee)
    # @id = employee[:id]
    # @first_name = employee[:first_name]
    # @last_name = employee[:last_name]
    # @full_time = employee[:full_time]
    # @monthly_salary = employee[:monthly_salary]
    # @benefits = {vacation_days: 0, health_care_coverage: false, retirement_account:false, stock_option: false}
    super(employee)
  end



  def benefits
      @benefits[:vacation_days] = 20
      @benefits[:health_care_coverage] = true
      @benefits[:retirement_account] = true
      @benefits[:stock_option] = true

  end

  def annual_salary
    salary = super
    (salary * 1.1).round(2)
    # (@monthly_salary * 12 * 1.1).round(2)
  end
  #
  # def annual_salary
  #   (@monthly_salary * 12 * 1.1).round(2)
  # end





end
