# In this challenge, you will make your own method to automatically create accountability groups from a list of names.
# You'll want to make of the People in your cohort.
# Try to get everyone into an accountability group of 4 or 5.
# Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person.
#
# This is a creative challenge and you can make it as easy or difficult as you would like. Decide what an MVP (Minimum Viable Product) will look like and what the output should be. This is part of the challenge.

# Create a method which takes total number of people, and total_hash, two arguments.
# Hash will include people's first and last names.
# Create two empty hashes. One of the hashes is for four people and the other is for five people accountability group.
# Accountability group should minimum 3 people, so the quantity should 3 or more.
# Iterate through each hash until there won't be any people left.
# Take that person (key and value), put into the accountability group.
# If Accountability group should be minimum 4 or 5,

def acct_group(sum, person)
  # hash_people ={first_name: "Fatma", last_name: "Ocal"}
  # hash_people ={first_name: "Jim", last_name: "Fung"}
  # total_num_peple =" "
  acct_four=[]
  # person.each do |element|
    if ( acct_four.length < 5)
      acct_four << person
    end
    p acct_four

end
acct_group(1,"Fatma")
acct_group(1,"Jim")
