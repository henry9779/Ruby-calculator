# class for calculate
class Calculator

  require_relative 'operations'

  def run
    loop do
      puts '請選擇執行動作'
      puts '1. 加法'
      puts '2. 減法'
      puts '3. 乘法'
      puts '4. 除法'
      puts '5. 退出'

      choice = gets.chomp.to_i

      break if choice == 5

      puts '請輸入第一個數字：'
      num1 = gets.chomp.to_f

      puts '請輸入第二個數字：'
      num2 = gets.chomp.to_f

      case choice
      when 1
        result = Addition.new.calculate(num1, num2)
        operator = '+'
      when 2
        result = Subtraction.new.calculate(num1, num2)
        operator = '-'
      when 3
        result = Multiplication.new.calculate(num1, num2)
        operator = '*'
      when 4
        result = Division.new.calculate(num1, num2)
        operator = '/'
      else
        puts '無效的選擇，請重新輸入'
        next
      end

      puts "計算結果: #{num1} #{operator} #{num2} = #{result}"
    end

    puts '感謝使用簡易計算機 OOP 版'
  end
end

calculator = Calculator.new
calculator.run
