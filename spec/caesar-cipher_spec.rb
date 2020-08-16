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

    it "returns the correct outputs within range" do
        expect(caesar_cipher('abcd', 1)).to eql('bcde')
    end

    it "returns the correct outputs with uppercase" do
        expect(caesar_cipher('What', 5)).to eql('Bmfy')
    end
end