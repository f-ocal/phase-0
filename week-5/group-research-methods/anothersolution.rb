def make_acc_group(array)
  counter = 1
  all_groups = []
  if array.length % 3 == 0
    puts 'This is the list divided into acountability groups of 3'
    all_groups = array.each_slice(3).to_a
    all_groups.each do |accgroup|
      print "Group #{counter}: #{accgroup} \n"
      counter += 1
    end
  elsif array.length % 4 == 0 || array.length % 4 == 3
    puts 'This is the list divided into acountability groups of 4'
    all_groups = array.each_slice(4).to_a
    all_groups.each do |accgroup|
      print "Group #{counter}: #{accgroup} \n"

      counter += 1
    end
  elsif array.length % 5 == 0 || array.length % 5 == 4 || array.length % 5 == 3
    all_groups = array.each_slice(5).to_a
    puts 'This is the list divided into acountability groups of 5'
    all_groups.each do |accgroup|
      print "Group #{counter}: #{accgroup} \n"
      counter += 1
    end
  else
    x = 3 - array.length % 5
    puts "Can't Divide Cohort In Groups of at least 3. Please Add #{x} person(s) to cohort"
  end
end

group_list = ['Caroline Artz','Syema Ailia','Alan Alcesto','Daniel Andersen','James Artz','Darius Atmar','Brian Bensch','Nicola Beuscher','Kris Bies','Logan Bresnahan','William Brinkert','Laura C.','Scott Chou','Bernice Anne W Chua','Abraham Clark','Jon Clayton','Kevin Corso','Jacob Crofts','John D.','Katy D.','Emmanuel Kaunitz','Amaar Fazlani','Solomon Fernandez','Edward Gemson','Jamar Gibbs','Chris Gomes','Will Granger','Christopher M.Guard','Adell H.','James Hwang','Matt H.','Michael H.','Peter H.','Ryan Ho','Igor Kazimirov','Walter Kerr','Karla King','Nruthya Lakshminarasimhan','Becky Lehmann','Malia Lehrer','Carolina Medellin','Timothy Meixell','Lorena Mesa','Chris Miklius','Joshua Monzon','Shea Munion','Bryan Munroe','Neal Peters','Trevor Newcomb','Aleksandra Nowak','Morgan O.','Fatma Ocal','Van Phan','Luis Fernando Plaz','Natalie Polen','Alicia Quezada','Celeen R.','Jessie Richardson','Gary S.','Iulia S.','Nimi Samocha','Zach Schatz','Tal Schwartz','Pratik Shah','Josh Shin','Shawn Spears','Sasha Tailor','Nil Thacker','Natasha Thapliyal','Sabrina Unrein','Brian Wagner','Clinton Weber','Gregory Wehmeier','Michael Whelpley','Alexander Williams','Peter N Wood','Caitlyn Y.','Ryan Zell']

make_acc_group(group_list)
