require_relative 'phone_translator'

describe PhoneTranslator do
  it "returns correct solution 1" do
    number = "1-800-FLOWERS"
    expect(PhoneTranslator.new(number).decode).to eql "1-800-3569377"
  end

  it "returns correct solution 2" do
    number = "1-800-800"
    expect(PhoneTranslator.new(number).decode).to eql "1-800-800"
  end

  it "returns correct solution 3" do
    number = ""
    expect(PhoneTranslator.new(number).decode).to eql "Proper usage: \n phone.rb number"
  end
end
