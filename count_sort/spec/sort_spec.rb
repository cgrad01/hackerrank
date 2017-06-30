require "spec_helper"

describe "sort_and_print" do

  before :each do
    @sample_input = ["20\n", "0 ab\n", "6 cd\n", "0 ef\n", "6 gh\n", "4 ij\n", "0 ab\n", "6 cd\n", "0 ef\n", "6 gh\n", "0 ij\n", "4 that\n", "3 be\n", "0 to\n", "1 be\n", "5 question\n", "1 or\n", "2 not\n", "4 is\n", "2 to\n", "4 the"]

    @expected_output = "- - - - - to be or not to be - that is the question - - - -"
  end

  it "gets the array length" do
    expect(get_length(@sample_input)).to eq @sample_input.length
  end

  it "makes items nested arrays" do
    expect(split_and_sort(@sample_input)[0]).to be_a Array
  end

  it "replaces content of first half of list with dashes" do
    expect(split_and_sort(@sample_input)[0][1]).to eq "-"
  end

  it "returns a string" do
    expect(join_and_print(@sample_input)).to be_a String
  end

  it "does not contain new lines" do
    expect(join_and_print(@sample_input).include?("\n")).to eq false
  end

  it "returns expected output" do
    expect(join_and_print(@sample_input)).to eq @expected_output
  end


end