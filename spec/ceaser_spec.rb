require './lib/cypher'

describe "#caesar_cypher" do
    it "takes a sentence e shifts the letter to the left accourding to a number" do
        expect(caesar_cypher('hello', 3)).to eql('khoor')
    end
end


describe "#soma_minuscula" do
    it "it takes a ascii number and then it adds the shift" do
        expect(soma_minuscula(96, 3)).to eql(99)
    end
    it "it takes a ascii number and then it adds the shift" do
        expect(soma_minuscula(122, 3)).to eql(99)
    end

    it "it takes a big ascii number and then it adds the shift" do
        expect(soma_minuscula(122, 100)).to eql(118)
    end
end

describe "#soma_maiuscula" do
    it "it takes a ascii number and then it adds the shift" do
        expect(soma_maiuscula(65, 3)).to eql(68)
    end
    it "it takes a ascii number and then it adds the shift" do
        expect(soma_maiuscula(90, 3)).to eql(67)
    end

    it "it takes a big ascii number and then it adds the shift" do
        expect(soma_maiuscula(65, 100)).to eql(87)
    end
end