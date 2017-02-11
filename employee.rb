class Employee

  attr_reader :name, :salary

  def initialize(name="Anonymous",salary=0.0)
    self.name = name
    self.salary = salary
  end


  def name=(name)
    if name==""
      raise "Name can't be blank!"
    end
    @name = name
  end

  def salary=(salary)
    if salary<0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary = salary
  end

  def print_pay_stub
    puts "Name: #{name}"
    pay_for_period = (@salary/365.0)*14
    puts format("Pay this period: %.2f dollar",pay_for_period)
  end
  def print_name
    puts "Name: #{name}"
  end
  def salary=(salary)

  end

  def example_format
    puts format("$%.2f", 3/4.0)
    puts format("%.2f",3/4)
    puts format("%.1f",3/4.0)
    puts format("%i",3/4.0)

  end


end


class SalaryEmployee < Employee
  attr_reader :salary

  def initialize(name="Anonimous",salary=0.0)
    super(name)
    self.salary=salary
  end

  def salary=(salary)

  end
  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0)*14
    forrmatted_pay = format("$%.2f",pay_for_period)
    puts "Pay this period: #{forrmatted_pay}"
  end
end


class HourlyEmployee < Employee

  attr_reader :hourly_wage, :hours_per_week

  def initialize(name="Anonymous", hourly_wage=0.0, hours_per_week=0)
    super(name)
    self.hourly_wage=hourly_wage
    self.hours_per_week=hours_per_week
  end
  def hourly_wage=(hourly_wage)

  end
  def hours_per_week=(hours_per_week)

  end
  def print_pay_stub
    print_name
    pay_for_period = (@hours_per_week * @hourly_wage)*2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay this period: #{formatted_pay}"
  end

end

martin = SalaryEmployee.new
martin.name = "Martin Gómez"
martin.print_pay_stub

billy = HourlyEmployee.new
billy.name = "Billy Palace"
billy.hourly_wage= 7
billy.hours_per_week=43
billy.print_pay_stub

#employee1 = Employee.new

#employee1.name=("Kara Bird")
#employee1.salary=(45000)
#employee1.print_pay_stub


#employee2 = Employee.new

#employee2.name=("Ben Weber")
#employee2.salary=444
#employee2.print_pay_stub

#employee1.example_format

#puts 6 / 2
#puts "-----------------------------"
#puts 9 < 7
#puts 9.< (7)
#puts 9 > 7
#puts 9.> (7)

#employee = Employee.new("Maria Sanchez",100.0)
#employee.print_pay_stub