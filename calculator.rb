# 簡易計算機

def addition(num1, num2)
  num1 + num2
end

def subtraction(num1, num2)
  num1 - num2
end

def multiplication(num1, num2)
  num1 * num2
end

def division(num1, num2)
  num1 / num2
end

# 主程序

puts '歡迎使用簡易計算機'

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
    result = addition(num1, num2)
    operator = '+'
  when 2
    result = subtraction(num1, num2)
    operator = '-'
  when 3
    result = multiplication(num1, num2)
    operator = '*'
  when 4
    result = division(num1, num2)
    operator = '/'
  else
    puts '無效的選擇，請重新輸入'
    next
  end

  puts "計算結果：#{num1} #{operator} #{num2} = #{result}"
end

puts '感謝使用簡易計算機'
