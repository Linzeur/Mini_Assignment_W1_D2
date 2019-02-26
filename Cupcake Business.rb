def Calculate_Price(brd,frs,fil,quan)
    breads=[0.5,0.75,0.85]
    frostings=[0.6,1.1,1.45]
    fillings=[0.0,1.0,0.55,0.45]
    descount=[0,4,10]
    quantities=[1,6,12]
    cost=(breads[brd-1]+frostings[frs-1]+fillings[fil])*quantities[quan-1]
    return cost*(100-descount[quan-1])/100
end

puts "Welcome to Cupcake's Palace"
puts "Which of our kind of bread would you like to choose?\n1-Vanilla ($0.50)\n2-Chocolate ($0.75)\n3-Red Velvet ($0.85)"
bread=gets.chomp.to_i
puts "Which of our kind of frosting would you like to choose?\n1-Vanilla ($0.60)\n2-Oreo ($1.10)\n3-Mint chocolate ($1.45)"
frosting=gets.chomp.to_i
puts "Would you like to choose Filling (y/n)?"
wantFilling=(gets.chomp=="y"?true:false)
filling=0
if wantFilling
    puts "Which one?\n1-Nutella ($1.00)\n2-Strawberry ($0.55)\n3-Peanut butter ($0.45)"
    filling=gets.chomp.to_i
end
puts "Which presentation do you want to?\n1-Individual (1 cupcake)\n2-Six Pack (6 cupcakes)\n3-Dozen Pack (12 cupcakes)"
quantity=gets.chomp.to_i
result=Calculate_Price(bread,frosting,filling,quantity).round(2)
puts "The final price is #{result}"