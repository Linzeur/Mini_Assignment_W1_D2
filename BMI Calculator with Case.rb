def BMI_Formula(wgt,hgt)
    return wgt/(hgt*hgt)
end

puts "Hi, let's go your body mass"
puts "Enter your weight(kg)"
weight=gets.chomp.to_f
if  weight<=0 then
    puts "The value is wrong, it has to numeric and greater than 0"
else
    puts "Enter your height(m)"
    height=gets.chomp.to_f
    if  height<=0 then
        puts "The value is wrong, it has to numeric and greater than 0"
    else
        formula= BMI_Formula(weight,height)
        res="Your result is: "
        case formula
        when (0...18.5)
            res+="Underweight"
        when (18.5...25)
            res+="Healthy weight"
        when (25...30)
            res+="Overweight"
        when (30..40)
            res+="Obesity"
        else
            res+="Morbid obesity"
        end

        puts res
    end
end