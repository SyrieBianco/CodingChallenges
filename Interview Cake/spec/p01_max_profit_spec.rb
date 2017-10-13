require 'p01_max_profit'

describe "p01: Max Profit" do
  context "given an array of random integers" do
    it "finds the largest possible profit in a simple array" do
      array = [2, 5, 6, 5, 3, 6, 6, 4, 7, 1]

      expect(max_profit(array)).to eq(7 - 2)
    end

    it "finds the largest possible profit with multiple maximums" do
      array = [2, 7, 6, 10, 9, 4, 10, 7, 10, 10]
      expect(max_profit(array)).to eq(10 - 2)
    end
  end

  context "given an array with more than one relative maximum" do
    it "finds the largest possible profit when the first min/max is
    greater than the second" do
      array = [2, 7, 10, 8, 1, 6, 5, 7, 3, 6]
      expect(max_profit(array)).to eq(10 - 2)
    end

    it "finds the largest possible profit when the second min/max is
    greater than the first" do
      array = [3, 7, 7, 8, 2, 6, 5, 10, 3, 6]
      expect(max_profit(array)).to eq(10 - 2)
    end
  end

  context "given an array of constantly decreasing numbers" do
    it "correctly handles a consistently decrementing array" do
      array = (1..10).to_a.reverse
      expect(max_profit(array)).to eq(-1)
    end

    it "correctly handles a plateau" do
      array = [10, 10, 9, 8, 8, 7, 6, 5, 4, 3]
      expect(max_profit(array)).to eq(8 - 8)
    end
  end
end
