class Calculator
  require_relative 'operation_factory'

  def run
    loop do
      puts "请输入第一个数字："
      num1 = gets.chomp.to_f

      puts "请输入操作符 (+, -, *, /)："
      operator = gets.chomp

      puts "请输入第二个数字："
      num2 = gets.chomp.to_f

      begin
        operation = OperationFactory.create_operation(operator)
        result = operation.calculate(num1, num2)
        puts "计算结果：#{num1} #{operator} #{num2} = #{result}"
      rescue RuntimeError => e
        puts "发生错误：#{e.message}"
      end

      puts "继续计算？(y/n)"
      continue = gets.chomp.downcase

      break if continue == "n"
    end

    puts "感谢使用计算器程序！"
  end
end

calculator = Calculator.new
calculator.run
