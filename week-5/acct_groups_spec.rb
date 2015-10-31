require_relative "acct_groups"

describe 'accountability group method' do
  let(:students_12) { ["Fatma Ocal", "Jim fung", "James", "Fatos", "1","Jenny", "Hung", "Man", "2", "H1", "H2", "3"] }
  let(:students_11) { ["Fatma Ocal", "Jim fung", "James", "Fatos", "1","Jenny", "Hung", "Man", "2", "H1", "H2"] }
  let(:students_10) { ["Fatma Ocal", "Jim fung", "James", "Fatos", "1","Jenny", "Hung", "Man", "2", "H1"] }

  it "separates 12 students into groups of 5 and 4 and 3" do
  #  expect(group_people(students)).to eq group_1: ["Fatma Ocal", "Jim fung", "James", "Fatos"],
  #                                       group_2: ["Jenny", "Hung", "Man"]
  expect(group_people(students_12)).to eq [["Fatma Ocal", "Jim fung", "James", "Fatos", "1"],
                                       ["Jenny", "Hung", "Man", "2"],
                                       ["H1", "H2", "3"]]
  end

  it "separates 11 students into groups of 5 and 3 and 3" do
  expect(group_people(students_11)).to eq [["Fatma Ocal", "Jim fung", "James", "Fatos", "1"],
                                       ["Jenny", "Hung", "Man"],
                                       ["2","H1", "H2"]]
  end

  it "separates 10 students into groups of 5 and 5" do
  expect(group_people(students_10)).to eq [["Fatma Ocal", "Jim fung", "James", "Fatos", "1"],
                                           ["Jenny", "Hung", "Man", "2","H1"]]
  end
end
