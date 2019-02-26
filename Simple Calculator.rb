puts "Hi, what option do you want to?\n1-Add\n2-Substract\n3-Multiplication\n4-Division"
option = gets.chomp
puts "Enter the first number"
num1 = gets.chomp.to_f
puts "Enter the second number"
num2 = gets.chomp.to_f
res=0
case option
when "1"
    res=num1+num2
when "2"
    res=num1-num2
when "3"
    res=num1*num2
when "4"
    res=num1/num2
end

puts "El resultado es #{res}"
