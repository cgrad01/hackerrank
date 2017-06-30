require 'spec_helper'



describe "army_conversion" do

   before :each do
      @test_time = "07:45:33PM"
      @test_time2 = "02:23:56AM"
      @test_time3 = "12:23:56AM"
      @test_time4 = "12:23:56PM"

      @expected_time = "19:45:33"
      @expected_time2 = "02:23:56"
      @expected_time3 = "00:23:56"
      @expected_time4 = "12:23:56"
   end

   it "returns a string" do
      expect(army_conversion(@test_time).class).to eq String
   end

   it "loses PM designation" do
      expect(army_conversion(@test_time).include?("PM")).to be false
   end

   it "loses AM designation" do
      expect(army_conversion(@test_time2).include?("AM")).to be false
   end

   it "adds 12 to PM hours" do
      expect(army_conversion(@test_time)).to eq @expected_time
   end

   it "does not change AM hours" do
      expect(army_conversion(@test_time2)).to eq @expected_time2
   end

   it "changes midnight to 00" do
      expect(army_conversion(@test_time3)).to eq @expected_time3
   end

   it "does not change 12pm" do
      expect(army_conversion(@test_time4)).to eq @expected_time4
   end

end



# def random_fibonacci
#    [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
# end

# describe "is_fibonacci?" do
#    it "returns true when a integer is one number of the Fibonacci sequence" do
#       expect(is_fibonacci?(random_fibonacci)).to be true
#    end
#    it "returns true with a large Fibonacci number" do
#       expect(is_fibonacci?(8670007398507948658051921)).to be true
#    end
#    it "returns false when it's not in the Fibonacci seqence" do
#       expect(is_fibonacci?(random_fibonacci+100)).to be false
#    end
#    it "returns false on large non-Fibonacci numbers" do
#       expect(is_fibonacci?(927372692193078999171)).to be false
#    end
# end