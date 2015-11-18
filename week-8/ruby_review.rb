# Cipher Challenge

# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.


# defining an function called dr_evils_cipher which takes a single argument, an input of coded message.
def dr_evils_cipher(coded_message)
  #downcasing all the messaages and splitting them for each character. The result will be in this syntax ["m", "^", "a", "e", "r", "x", "%", "e", "&", "g", "s", "o", "i", "!"], this result equals to input, which is the single-character of strings.
  input = coded_message.downcase.split("")
  #declaring an empty array called decoded_sentence.
  decoded_sentence = []
  #This is the hash that taking key and value pairs.
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
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?????
    cipher.each_key do |y| # .each_key is calling the block once for each key in hash, cipher.
      if x == y  # This is comparing the strings of the input with key from the hash if they are equal. The input is lowercase, single string character e.g. "m" checking if this value equals to the key of the chiper.
        decoded_sentence << cipher[y] # If input single character is equals to the key, then we are taking the value of that key and pushing into earlier defined array, decoded_sentence line 16.
        found_match = true # This is setting the found_match to true value.
        break  # Existing from the if /elsif condition.
      # If input character is not matching with any of the chiper keys, then it is checking if the characters is equals to one of these @, #, $, %, ^, &, *
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
        decoded_sentence << " " # If it is matching then, then you are pushing a single character space to the decoded_sentence array.
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true # This is setting the found_match to true value.
        break # Existing from the if /elsif condition.
      end
    end
    if not found_match  # if found_match is false, as initialized on line 46, then you do following on the next line.
      decoded_sentence << x # You are pushing x into decoded_sentence array.
    end
  end
  decoded_sentence = decoded_sentence.join("") # You are combining all the characters of strins into a single string. So, input results to "m^aerx%e&gsoi!"
  #It is returning the final joint string after replacing each characters with other characters which were taken based on the if, elsif statements.
end

# Your Refactored Solution





# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# What concepts did you review or learn in this challenge?
# It was very interesting and fun challenge.

# What is still confusing to you about Ruby?
#
# What are you going to study to get more prepared for Phase 1?
