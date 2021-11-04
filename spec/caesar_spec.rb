#spec/caesar_spec.rb
require './lib/caesar.rb'

#describe "#caesar" do
describe "#shift" do
  it "returns a shift of 1" do
    string = "Dog"
    expect(caesar_cipher(string,1)).to eql("Eph")
  end
  it "returns a shift of 2" do
    string = "ban"
    expect(caesar_cipher(string,2)).to eql("dcp")
  end
  it "returns a shift of 0" do
    string = "cat"
    expect(caesar_cipher(string,0)).to eql("cat")
  end
  it "returns a shift of 25" do
    string = "cat"
    expect(caesar_cipher(string,25)).to eql("bzs")
  end


end
