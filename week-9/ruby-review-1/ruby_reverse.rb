# Reverse Words

# I worked on this challenge with Brian and it took us 30 mins.

# Reflection
=begin

What concepts did you review in this challenge?
  The challenge wasn't difficult at all. In fact, we finished it within only 30 mins with Pseudocode and refactoring.

What is still confusing to you about Ruby?
  Nope, I am not.

What are you going to study to get more prepared for Phase 1?
  I am planning to study more, especially inheritance classes and object-oriented programming with Ruby.

=end

# Pseudocode
=begin
define a method for reverse_words that will take a string as input
we'll then split that string input into an array of individual words
we'll then iterate through the array and reverse the characters in each word element
we'll then join the output back into a string and print it out
=end

# Initial Solution

def reverse_words(string)
  array = string.split(" ")
  reversed_array = array.each{|element| element.reverse!()}
  final = reversed_array.join(" ")
  p final
end

reverse_words("this is a test")

# Refactored Solution

def reverse_words(string)
  return string.split(" ").each{|element| element.reverse!()}.join(" ")
end


# RSpec Tests:

def random_word(length = 5)
  rand(36**length).to_s(36)
end

describe "reverse_words" do
  it "does nothing to an empty string" do
    expect(reverse_words("")).to eq ""
  end
  it "reverses a single word" do
    word = random_word
    expect(reverse_words(word)).to eq word.reverse
  end
  it "reverses two words" do
    word1 = random_word
    word2 = random_word
    expect(reverse_words("#{word1} #{word2}")).to eq "#{word1.reverse} #{word2.reverse}"
  end
  it "reverses a sentence" do
    expect(reverse_words("Ich bin ein Berliner")).to eq "hcI nib nie renilreB"
  end
end
