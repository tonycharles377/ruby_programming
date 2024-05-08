require './lib/caesar_cipher'

RSpec.describe "caesar_cipher" do
    it "Preserves non-alphabetic characters" do
        expect(caesar_cipher("This's it!!!.", 2)).to eql("Vjku'u kv!!!.")
    end

    it "Handles right_shift of value 0" do
        expect(caesar_cipher("Hello world", 0)).to eql("Hello world")
    end

    it "Handles an empty string" do
        expect(caesar_cipher("", 10)).to eql("")
    end

    it "Handles a negative right_shift value" do
        expect(caesar_cipher("It is what it is!!", -20)).to eql("Oz oy cngz oz oy!!")
    end

    it "handles a right_shift greater than 26" do
        expect(caesar_cipher("Hello", 30)).to eq("Lipps")
    end
end