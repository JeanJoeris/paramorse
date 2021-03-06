require 'pry'
full_morse_hash = {"a"=>"10111",
"b"=>"111010101",
"c"=>"11101011101",
"d"=>"1110101",
"e"=>"1",
"f"=>"101011101",
"g" => "111011101",
"h" => "1010101",
"i" => "101",
"j" => "1011101110111",
"k" => "111010111",
"l" => "101110101",
"m" => "1110111",
"n" => "11101",
"o" => "11101110111",
"p" => "10111011101",
"q" => "1110111010111",
"r" => "1011101",
"s" => "10101",
"t" => "111",
"u" => "1010111",
"v" => "101010111",
"w" => "101110111",
"x" => "11101010111",
"y" => "1110101110111",
"z" => "11101110101",
" " => "000000",
"1" => "10111011101110111",
"2" => "101011101110111",
"3" => "1010101110111",
"4" => "10101010111",
"5" => "101010101",
"6" => "11101010101",
"7" => "1110111010101",
"8" => "111011101110101",
"9" => "11101110111011101",
"0" => "1110111011101110111"}

y_to_0 = {
"y" => "1110101110111",
"z" => "11101110101",
"1" => "10111011101110111",
"2" => "101011101110111",
"3" => "1010101110111",
"4" => "10101010111",
"5" => "101010101",
"6" => "11101010101",
"7" => "1110111010101",
"8" => "111011101110101",
"9" => "11101110111011101",
"0" => "1110111011101110111"
}

u_to_4 = {
"u" => "1010111",
"v" => "101010111",
"w" => "101110111",
"x" => "11101010111",
"y" => "1110101110111",
"z" => "11101110101",
"1" => "10111011101110111",
"2" => "101011101110111",
"3" => "1010101110111",
"4" => "10101010111",
}

k_to_t = {
'k' => '111010111',
'l' => '101110101',
'm' => '1110111',
'n' => '11101',
'o' => '11101110111',
'p' => '10111011101',
'q' => '1110111010111',
'r' => '1011101',
's' => '10101',
't' => '111'
}


o_to_x = {
"o"=>"11101110111",
"p"=>"10111011101",
"q"=>"1110111010111",
"r"=>"1011101",
"s"=>"10101",
"t"=>"111",
"u"=>"1010111",
"v"=>"101010111",
"w"=>"101110111",
"x"=>"11101010111"
}

d_to_n = {
"d" => "1110101",
"e" => "1",
"f" => "101011101",
"g" => "111011101",
"h" => "1010101",
"i" => "101",
"j" => "1011101110111",
"k" => "111010111",
"l" => "101110101",
"m" => "1110111",
"n" => "11101"
}

a_to_j_and_5_to_0 = {
"a" => "10111",
"b" => "111010101",
"c" => "11101011101",
"d" => "11101010",
"e" => "1",
"f" => "101011101",
"g" => "111011101",
"h" => "1010101",
"i" => "101",
"j" => "1011101110111",
"5" => "101010101",
"6" => "11101010101",
"7" => "1110111010101",
"8" => "111011101110101",
"9" => "11101110111011101",
"0" => "1110111011101110111"
}

result_array = []
y_to_0.each do |foo|
  # binding.pry
  result_array << true if foo[1] == full_morse_hash[foo[0]]
  result_array << false if foo[1] != full_morse_hash[foo[0]]
  # binding.pry
end

unless result_array.include?(false)
  puts "y through 0 confirmed"
end

result_array = []
u_to_4.each do |foo|
  result_array << true if foo[1] == full_morse_hash[foo[0]]
  if foo[1] != full_morse_hash[foo[0]]
    result_array << false
    puts foo[0]
  end
end

unless result_array.include?(false)
  puts "u through 4 confirmed"
end

result_array = []
k_to_t.each do |foo|
  result_array << true if foo[1] == full_morse_hash[foo[0]]
  result_array << false if foo[1] != full_morse_hash[foo[0]]
end

unless result_array.include?(false)
  puts "k through t confirmed"
end

result_array = []
o_to_x.each do |foo|
  result_array << true if foo[1] == full_morse_hash[foo[0]]
  if foo[1] != full_morse_hash[foo[0]]
    result_array << false
    puts foo[0]
  end
end

unless result_array.include?(false)
  puts "o through x confirmed"
end

result_array = []
d_to_n.each do |foo|
  result_array << true if foo[1] == full_morse_hash[foo[0]]
  result_array << false if foo[1] != full_morse_hash[foo[0]]
end

unless result_array.include?(false)
  puts "d through n confirmed"
end

result_array = []
a_to_j_and_5_to_0.each do |foo|
  result_array << true if foo[1] == full_morse_hash[foo[0]]
  result_array << false if foo[1] != full_morse_hash[foo[0]]
end

unless result_array.include?(false)
  puts "a through j and 5 to 0 confirmed"
end
