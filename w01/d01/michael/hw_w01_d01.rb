first_ans = 7 / 2
puts first_ans

print first_ans

3 => nil
2.1.4 :004 > first_ans = 7 / 2.to_f
 => 3.5
2.1.4 :005 > first_ans = 7.to_f / 2
 => 3.5
2.1.4 :006 > first_ans = 7 / 2.0
 => 3.5
2.1.4 :007 > first_ans = 7.0 / 2
 => 3.5
2.1.4 :008 > first_ans = first_ans.round * 4
 => 16
2.1.4 :009 > def get_character(full_string, index)
2.1.4 :010?>     full_string[index]
2.1.4 :011?>   end
 => :get_character
2.1.4 :012 > message_string = "oicdlcwhejkeenoemrstuo"
 => "oicdlcwhejkeenoemrstuo"
2.1.4 :013 > character_1 = get_character(message_string, 4)
 => "l"
2.1.4 :014 > character_2 = get_character(message_string, 7)
 => "h"
2.1.4 :015 > character_3 = get_character(message_string, 2)
 => "c"
2.1.4 :016 > message_array = [character_1, character_2]
 => ["l", "h"]
2.1.4 :017 > message_array.push(character_2)
 => ["l", "h", "h"]
2.1.4 :018 > message_array.pop()
 => "h"
2.1.4 :019 > message_array.push(character_3)
 => ["l", "h", "c"]
2.1.4 :020 > message_array
 => ["l", "h", "c"]
2.1.4 :021 > puts message_array
l
h
c
 => nil
2.1.4 :022 > print message_array
["l", "h", "c"] => nil
2.1.4 :023 > value_float_1 = Math.sin(Math::PI / 2)
 => 1.0
2.1.4 :024 > value_float_2 = Math.cos(Math::PI)
 => -1.0
2.1.4 :025 > value_float_3 = (value_float_1 + value_float_2)
 => 0.0
2.1.4 :026 > value_integer_1 = (value_float_1 + value_float_2).to_i
 => 0
2.1.4 :027 > value_float_1 = value_float_1 * 4
 => 4.0
2.1.4 :028 > value_float_2 *= 5
 => -5.0
2.1.4 :029 > value_float_2 = value_float_2.abs
 => 5.0
2.1.4 :030 > value_integer_1 += 8
 => 8
2.1.4 :031 > value_float_4 = value_integer_1 * 3
 => 24
2.1.4 :032 > value_float_3 -= 1
 => -1.0
2.1.4 :033 > number_array = [value_float_1, value_float_2, value_float_3, value_float_4]
 => [4.0, 5.0, -1.0, 24]
2.1.4 :034 > number_array.push(first_ans)
 => [4.0, 5.0, -1.0, 24, 16]
2.1.4 :035 > number_array.unshift(value_integer_1)
 => [8, 4.0, 5.0, -1.0, 24, 16]
2.1.4 :036 > number_array.push(value_integer_1)
 => [8, 4.0, 5.0, -1.0, 24, 16, 8]
2.1.4 :037 > number_array.unshift( Math.sqrt(36) )
 => [6.0, 8, 4.0, 5.0, -1.0, 24, 16, 8]
2.1.4 :038 > number_array.delete_at(5)
 => 24
2.1.4 :039 > number_array.push( [19, 21, 6, 3, 1] )
 => [6.0, 8, 4.0, 5.0, -1.0, 16, 8, [19, 21, 6, 3, 1]]
2.1.4 :040 > number_array.flatten!
 => [6.0, 8, 4.0, 5.0, -1.0, 16, 8, 19, 21, 6, 3, 1]
2.1.4 :041 > number_array.each { |current_index| puts get_character(message_string, current_index) }
w
e
l
c
o
m
e
t
o
w
d
i
 => [6.0, 8, 4.0, 5.0, -1.0, 16, 8, 19, 21, 6, 3, 1]
2.1.4 :042 >