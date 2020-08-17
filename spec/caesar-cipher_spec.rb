require '../lib/caesar-cipher'
require 'pry'

describe 'caesar_cipher' do
    it "returns 'Type of `str` must be String' if wrong type of `str` inputted" do
        expect(caesar_cipher(9, 3)).to eql('Type of `str` must be String')
        expect(caesar_cipher([80], 3)).to eql('Type of `str` must be String')
        expect(caesar_cipher(9.8, 3)).to eql('Type of `str` must be String')
        expect(caesar_cipher({:hi => 'hello'}, 3)).to eql('Type of `str` must be String')
    end

    it "returns 'Type of `n` must be Integer' if wrong type of `n` inputted" do
        expect(caesar_cipher('hello', '3')).to eql('Type of `n` must be Integer')
        expect(caesar_cipher('hello', [3])).to eql('Type of `n` must be Integer')
        expect(caesar_cipher('hello', 3.7)).to eql('Type of `n` must be Integer')
        expect(caesar_cipher('hello', {:hi => 'hello'})).to eql('Type of `n` must be Integer')
    end

    it "returns the correct output within range" do
        expect(caesar_cipher('abcd', 1)).to eql('bcde')
    end

    it "returns the correct output when there's an uppercase letter" do
        expect(caesar_cipher('What', 5)).to eql('Bmfy')
    end

    it "returns the correct output with non-letter characters" do
        expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end

    it "returns the correct output outside range" do
        expect(caesar_cipher("xyz", 3)).to eql("abc")
    end
end