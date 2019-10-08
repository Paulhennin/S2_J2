require_relative '../lib/multiples'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(17)).to eq(false)
    expect(is_multiple_of_3_or_5?(23)).to eq(false)
    expect(is_multiple_of_3_or_5?(53)).to eq(false)
    expect(is_multiple_of_3_or_5?(98)).to eq(false)
  end

end

describe "the is_sum_of_3_or_5_multiples? method" do
    it "should return an integer even if it's 0." do
      expect(sum_of_3_or_5_multiples?(10)).to eq(23)
      expect(sum_of_3_or_5_multiples?(11)).to eq(33)
      expect(sum_of_3_or_5_multiples?(0)).to eq(0)
      expect(sum_of_3_or_5_multiples?(17)).to eq(60)
    end

    it "should return a complain if not correct number or string" do
      expect(sum_of_3_or_5_multiples?(-4)).to eq("It's not what we needed.")
      expect(sum_of_3_or_5_multiples?("coucou")).to eq("It's not what we needed.")
      expect(sum_of_3_or_5_multiples?(24)).to eq("It's not what we needed.")
      expect(sum_of_3_or_5_multiples?()).to eq("It's not what we needed.")
    end
end
