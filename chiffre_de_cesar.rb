n = gets.chomp.to_s
word = n.to_s
puts "word" + word
i = 0
lng = word.size
puts "  lng"  + lng.to_s
my_array = []
until i > lng  do
  my_array << word[i]
  i +=1
end

puts "my array " + my_array.to_s
my_array_alph = [*'a'..'z']

def roule (my_array, my_array_alph)
#  trouve =  /[A-Z]/i.match(word)
#  puts "trouve->" + trouve.to_s + "<-"
  i = 0
  k = 0
  puts "my_array      " + my_array.to_s
  puts "my arary alph " + my_array_alph.to_s
  final_array = []
  my_array.each do |a|

# trouve =  /[A-Z&&a-z]/i.match(i)
    trouve =  /[a-z]/i.match(a)
    if trouve != nil
       puts "je passe"
       my_array_alph.each do |b|
         puts "a= " + a + " b = " + b
         if a == b
            j = k.to_i + 3
            final_array << my_array_alph[j].to_s
         end
         k += 1
       end
     end
     i += 1
   end
#  my_array.each do
#       sub 0 par ex par 3 de ayyay alph
#  end
  puts "final_array " + final_array.to_s + "<---"
end

puts roule(my_array, my_array_alph)
