# You'll want to make countabilly groups of the People in your cohort.
# Try to get everyone (56 total) into an accountability group of 4. (56 % 4 == 0)
# Be sure everyone is in a group of at least 3.
# **optional** maybe account for roster change ups? **optional**
# Decide what a minimum vialble product will look like.

peeps = [
  "Dong Wook Seo (John)",
  "Aaron Hu",
  "Adam Pinsky",
  "Akeem Street",
  "Alex Forger",
  "Andrew Kim",
  "Baron Kwan",
  "Brian Bier	",
  "Byron Gage",
  "Carl Conroy",
  "Charlie Bliss",
  "Christopher Bunkers",
  "Cody Kendall",
  "Coline Forde",
  "David Valencia",
  "Emily Claire Bosakowski",
  "Everett Golden",
  "Hagai Zwick",
  "Heather Conklin",
  "Ian Wudarski",
  "Ieronim Oltean",
  "Jake Hamilton",
  "James Boyd",
  "Jasmeet Chatrath",
  "Jenna El-Amin",
  "Jerrie Evans",
  "Joe Case",
  "Jonathan Case",
  "Jonathan Schwartz",
  "Jonathan Silvestri",
  "Kathryn Garbacz",
  "Ian Kinner",
  "Kyle Cierzan",
  "Kyle Zelman",
  "Linda Oanh Ho",
  "Yiorgos Makridakis",
  "Matt Harris",
  "Matthew Baquerizo",
  "Menuka Samaranayake",
  "Michael Pintar",
  "Mollie Stein",
  "Lydia Nash",
  "Aaron Opsahl",
  "Peter Leong",
  "Peter Stratoudakis",
  "Prince Sadie",
  "Ryan F. Salerno",
  "Sanderfer Chau",
  "Sarah Finken",
  "EMMET SUSSLIN",
  "Sydney Rossman-Reich",
  "Eric Tenza",
  "Thomas Yancey",
  "Tim Kelly",
  "Timothy Beck",
  "Tyler Doerschuk"
]

# input: peeps
# output: a hash with group numbers as keys and group members in an array
# steps: 1. divide 56 by 4 to determine total number of groups, store in a
#           variable called num_of_groups
#           a. optional to handle roster changes here
#        2. for i in (1..num_of_groups) - assign hash[group #{i}] = nil
#        3. give each hash key an array value of four members from peeps
#        4. output that hash in a readable manner
def acct_groups(people)
  us = people.clone.shuffle
  if people.size % 4 == 0
    group_size = 4
  elsif people.size % 5 == 0
    group_size = 5
  else
    group_size = 3
  end
  num_of_groups = people.size / group_size
  num_of_groups += 1 if num_of_groups * group_size < us.size
  groups = {}

  for i in (1..num_of_groups)
    temp_group = []
    group_size.times { temp_group << us.shift }
    groups["Group #{i}"] = temp_group
  end

  # this statement ensures no group has less than 3 members
  if groups.values.last.include?(nil)
    groups["Group #{num_of_groups - 1}"] += groups["Group #{num_of_groups}"]
    # this short loop gets rid of the nil names
    (groups.values.last.count { |name| name == nil }).times do
      groups["Group #{num_of_groups -1}"].pop
    end
    groups.delete("Group #{num_of_groups}")
  end

  groups
end

# input: a hash of group names and members
# output: prints something easier on the eyes than a hash
# a dressed up version of this: acct_groups(peeps).each { |group| puts group.to_s }
def display_groups(group_roster)
  group_roster.each do |group_name, members|
    print "#{group_name}: "

    for i in (0..members.size - 2)
      print "#{members[i]}, "
    end
    puts members[-1]
  end
end

display_groups(acct_groups(peeps))

# What was the most interesting and most difficult part of this challenge?
# The most interesting part was brainstorming how to do this challenge after the
# pseudocode was written.  The most difficult part was troubleshooting minor
# errors.  Don't get me wrong, it's part of the fun.  On line 96, I used a 1
# instead of a 0, and a 1 instead of a 2, which threw me for a loop.
#
# Do you feel you are improving in your ability to write pseudocode
# and break the problem down?
# I am improving on my ability to write pseudocode.  I am getting faster at it
# as well.  Pseudocode is becoming less uncomfortable.  When writing pseudocode,
# I still feel as though I am listening to the lifeguard tell me all the pool
# rules when I really just want to jump into the pool.
#
# Was your approach for automating this task a good solution?
# What could have made it even better?
# I like my approach.  I like displaying the group roster in a format other than
# a hash.  This solution doesn't save the roster to a file.  This program could
# also be doctored up to read names from a file.  I ain't doing that tonight, though.
#
# What data structure did you decide to store the accountability groups in and why?
# I stored the accountablity groups in a hash because there must be no repeat
# groups names.  An array would have worked, as well.  It was a toss-up.
#
# What did you learn in the process of refactoring your initial solution?
# Did you learn any new Ruby methods?
# I learned about hash's delete. I also used clone and shuffle. Ther was some
# troubleshooting involved with getting most of it "just so".  I like it.
