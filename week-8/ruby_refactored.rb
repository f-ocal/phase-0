# Cipher Challenge

# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

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

  # Reflection

  # What concepts did you review or learn in this challenge?
  # It was very interesting and fun challenge. I learn about zip method.

  # What is still confusing to you about Ruby?
  #
  # What are you going to study to get more prepared for Phase 1?
