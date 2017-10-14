require 'p02_product_without_element'

describe "p02: Product Without Current Element" do
  it "correctly handles this array" do
    arr = [1, 2, 3, 4]
    expect = [ 2 * 3 * 4, 1 * 3 * 4, 1 * 2 * 4, 1 * 2 * 3 ]

    expect(product_without_current_element(arr)).to eq(expect)
  end
  it "correctly handles this array" do
    arr = [5, 6, 7, 8]
    expect = [ 6 * 7 * 8, 5 * 7 * 8, 5 * 6 * 8, 5 * 6 * 7 ]

    expect(product_without_current_element(arr)).to eq(expect)
  end
  it "correctly handles an array with zero" do
    arr = [0, 4, 2, 1]
    expect = [ 4 * 2 * 1, 0 * 2 * 1, 0 * 4 * 1, 0 * 4 * 2 ]

    expect(product_without_current_element(arr)).to eq(expect)
  end
end
