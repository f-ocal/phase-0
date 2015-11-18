# Cipher Challenge

# I worked on this challenge by myself.
# I spent 1,5 hours on this challenge.

# 1. Solution

# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# defining an function called dr_evils_cipher which takes a single argument, an input of coded message.
def dr_evils_cipher(coded_message)
  #downcasing all the messaages and splitting them for each character. The result will be in this syntax ["m", "^", "a", "e", "r", "x", "%", "e", "&", "g", "s", "o", "i", "!"], this result equals to input, which is the single-character of strings.
  input = coded_message.downcase.split("")
  #declaring an empty array called decoded_sentence.
  decoded_sentence = []
  # This is the hash that taking key and value pairs.

  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   #
            "h" => "d",   # The hash is great for key and value pairs. The key is the a shift of fours letters of the value.
            "i" => "e",   # The value of the hash starts from a.
            "j" => "f",   # I will work on the automated way to results the same output and include in the refactored solution in below section.
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  input.each do |x| # Iterating through each element of input array. As line 14, the input is the lowercase of single character strings.
    found_match = false  # this is set to false at initial so on line 64, any condition that doesn't meet the previous if elsif conditions, line 68 will be executed.
    cipher.each_key do |y| # .each_key is calling the block once for each key in hash, cipher.
      if x == y  # This is comparing the strings of the input (x) with key from the hash if they are equal. The input is lowercase, single string character e.g. "m" checking if this value equals to the key of the chiper.
        decoded_sentence << cipher[y] # If input single character is equals to the key, then we are taking the value of that key and pushing into earlier defined array, decoded_sentence line 16.
        found_match = true # This is setting the found_match to true value.
        break  # Existing from the if /elsif condition.
      # If input character is not matching with any of the chiper keys, then it is checking if the characters is equals to one of these @, #, $, %, ^, &, *
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
        decoded_sentence << " " # If it is matching then, then you are pushing a single character space to the decoded_sentence array.
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # (0..9).to_a will result to [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] array, here it is checking if any of the input character(x) is included within this array. If it is true, it executes the next line.
        decoded_sentence << x #
        found_match = true # This is setting the found_match to true value.
        break # Existing from the if /elsif condition.
      end
    end
    if not found_match  # if found_match is false, as initialized on line 47, then you do following on the next line.
      decoded_sentence << x # You are pushing x into decoded_sentence array.
    end
  end
  decoded_sentence = decoded_sentence.join("") # You are combining all the characters of strins into a single string. So, input results to "m^aerx%e&gsoi!"
  #It is returning the final joint string after replacing each characters with other characters which were taken based on the if, elsif statements.
end

########################### My Refactored Solution ######################

class DrEvilCipher

  def decode_string(coded_message)
    input = coded_message.downcase.split("")
    input.map { |x| decode_character(x) }.join
  end

  def decode_character(encoded_character)
    decoded_character = cipher_lookup(encoded_character)

    if decoded_character.nil?
      decoded_character = %w(@ # $ % ^ & *).include?(encoded_character) ? " " : encoded_character
    end
    decoded_character
  end

  private

  def cipher_lookup(encoded_character)
    alphabet = ('a'..'z').to_a
    rotated_alphabet = alphabet.rotate(4)
    cipher = rotated_alphabet.zip(alphabet).to_h
    cipher[encoded_character]
  end
end

# Driver Test Code:
p DrEvilCipher.new.decode_string("m^aerx%e&gsoi!") == "i want a coke!"
p DrEvilCipher.new.decode_string("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")== "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
p DrEvilCipher.new.decode_string("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
p DrEvilCipher.new.decode_string("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
p DrEvilCipher.new.decode_string("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

# # Driver Test Code:
# p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# # Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
# p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
# &fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")== "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"
# p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."
# p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
# @m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."
# p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

# ************* Some Tricks for shifting the letter in the alphabet **************
# alphabet = ('a'..'z').to_a # This print of all alphabet. ['a','b','c', 'd']
# rotated_alphabet = ('a'..'z').to_a.rotate(4) # this prints the alphabet starting from 'e', 'f', ..
# cipher = {}
# rotated_alphabet.zip(alphabet).to_h

# This is another solution for creating cipher hash.
# rotated_alphabet.each_with_index do |letter, index|
#   cipher[letter] = alphabet[index]
# end

# *************************

# REFLECTION

# What concepts did you review or learn in this challenge?
  # This challenge was very interesting and fun. I learn about zip, rotate methods
  # which they were great refactoring to replace the cipher hash. Another help was
  # to_h so that it creates a new hash when combine both arrays and return a single array.

# What is still confusing to you about Ruby?
  # I feel that I am very confident with Ruby code, I also noticed that I enjoyed
  # refactoring. I did good job on this! I refactored 50 lines of code with  18 lines
  # so I am so proud that the readability has been improved and it look more clean,
  # clear within a class by calling different methods.

# What are you going to study to get more prepared for Phase 1?
  # I think I should practice more and get familiar with methods and classess.
