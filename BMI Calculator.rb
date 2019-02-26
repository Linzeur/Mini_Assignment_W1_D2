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
        if formula<18.5 then
            res+="Underweight"
        elsif (18.5...25)===formula
            res+="Healthy weight"
        elsif (25...30)===formula
            res+="Overweight"
        elsif (30..40)===formula
            res+="Obesity"
        else
            res+="Morbid obesity"
        end
        puts res
    end
end