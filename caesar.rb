require 'pry-byebug'


def caesar_cipher(string, key = 0)
  string.gsub!(/[^a-zA-Z. ]/, "")
  string.gsub!(/[^0-9]/, "")
  starting_array = string.scan(/./)
  starting_array.map! {|letter| letter.ord.to_i}
  shifted_array = starting_array.map do |i|
    if i == 32
      i
    elsif i < 91
      ((i-65+key) % 26) + 65
    else
      ((i-97+key) % 26) + 97
    end
  end
  shifted_string = shifted_array.map {|number| number.chr.to_s}
  shifted_string.join("")
  
end

puts "Enter the the sentence that you would like to encrypt "
input = gets.chomp

puts caesar_cipher(input, 1)