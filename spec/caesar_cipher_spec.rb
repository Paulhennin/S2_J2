require_relative "../lib/caesar_cipher"

describe "crypto_from_caesar method" do
  it "should code the string with a number from ASCII table" do
    expect(caesar_cipher("help",5)).to eq("mjqu")
    expect(caesar_cipher(",, ,",5)).to eq(",, ,")
    expect(caesar_cipher("Je suis bon",5)).to eq("Oj xznx gts")
  end
end
