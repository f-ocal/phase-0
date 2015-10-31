require_relative "acct_groups"

describe 'accountability group method' do
  let(:students_12) { ["Fatma", "Yasemin", "Burcu", "Zahide", "Nezahat","Bekir", "Kerem", "Ali", "Jim", "Jenny", "Alice", "Ayca"] }
  let(:students_11) { ["Fatma", "Yasemin", "Burcu", "Zahide", "Nezahat","Bekir", "Kerem", "Ali", "Jim", "Jenny", "Alice"] }
  let(:students_10) { ["Fatma", "Yasemin", "Burcu", "Zahide", "Nezahat","Bekir", "Kerem", "Ali", "Jim", "Jenny"] }
  let(:students_1) { ["Fatma"] }
  let(:students_2) { ["Fatma","Yasemin"] }
  let(:students_3) {["Fatma", "Yasemin", "Burcu"]}

  it "separates 12 students into groups of 5 and 4 and 3" do
    expect(group_people(students_12)).to eq [["Fatma", "Yasemin", "Burcu", "Zahide", "Nezahat"],
    ["Bekir", "Kerem", "Ali", "Jim"],
    ["Jenny", "Alice", "Ayca"]]
  end

  it "separates 11 students into groups of 5 and 3 and 3" do
    expect(group_people(students_11)).to eq [["Fatma", "Yasemin", "Burcu", "Zahide", "Nezahat"],
    ["Bekir", "Kerem", "Ali"],
    ["Jim", "Jenny", "Alice"]]
  end

  it "separates 10 students into groups of 5 and 5" do
    expect(group_people(students_10)).to eq [["Fatma", "Yasemin", "Burcu", "Zahide", "Nezahat"],
    ["Bekir", "Kerem", "Ali", "Jim", "Jenny"]]
  end

  it "return nil if it is only one students" do
    expect(group_people(students_1)).to eq nil
  end

  it "return nil if it is only two students" do
    expect(group_people(students_2)).to eq nil
  end

  it "separates 3 students into group of three" do
    expect(group_people(students_3)).to eq [["Fatma", "Yasemin", "Burcu"]]
  end

end
