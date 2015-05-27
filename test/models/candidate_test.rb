require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
   test "must have params" do
     bill = Candidate.create!(name: "Bill", party: "Independent", district: 9, hometown: "El Paso")
     assert bill.valid?
     end

    test "associated with voters" do
      jane = Candidate.create!(name: "Jane", party: "Republican", district: 18, hometown: "Silver Springs")
      assert jane.voters
    end

    test "candidate has id" do
      bill = Candidate.create!(name: "Bill", party: "Independent", district: 9, hometown: "El Paso")
      assert_equal "Bill", bill.name
      assert bill.id 
    end
end
