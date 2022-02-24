class Employee

    attr_reader :id, :first_name, :last_name, :full_time, :monthly_salary, :benefits
    def initialize(employee)
      @id = employee[:id]
      @first_name = employee[:first_name]
      @last_name = employee[:last_name]
      @full_time = employee[:full_time]
      @monthly_salary = employee[:monthly_salary]
      @benefits = {vacation_days: 0, health_care_coverage: false, retirement_account:false, stock_option: false}

    end

    def full_time?
      @full_time
    end

    def benefits
      if full_time?
        @benefits[:vacation_days] = 10
        @benefits[:health_care_coverage] = true
        @benefits[:retirement_account] = true
      end
    end

    def annual_salary
      @monthly_salary * 12
    end
end
