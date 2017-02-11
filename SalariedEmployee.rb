require_relative 'Employee'
class SalaryEmployee < Employee
  attr_reader :salary

  def initialize
    super
  end

  def print_name
    puts "Name: #{name}"
  end
  def salary=(salary)

  end
  def print_pay_stub
    print_name
    pay_for_period = salary
  end
end


class HourlyEmployee < Employee

  attr_reader :salary
  def print_name
    puts "Name: #{name}"
  end

  def salary=(salary)

  end

  def print_pay_stub
  print_name
    pay_for_period = (@hours_per_week * @hourly_wage)*2
    puts format("Pay this period: %.2f dollar",pay_for_period)
  end

end

martin = SalaryEmployee.new("Martin Gómez",115)
martin.name
martin.print_pay_stub

Billy = HourlyEmployee.new
Billy.name = "Billy Palace"
Billy.hourly_wage= 7
Billy.hours_per_week=43
Billy.print_pay_stub
