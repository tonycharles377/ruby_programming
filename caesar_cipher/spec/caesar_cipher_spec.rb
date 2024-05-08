require './lib/caesar_cipher'

RSpec.describe "caesar_cipher" do
    it "Preserves non-alphabetic characters" do
        expect(caesar_cipher("This's it!!!.", 2)).to eql("Vjku'u kv!!!.")
    end
end