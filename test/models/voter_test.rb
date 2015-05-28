require 'test_helper'

class VoterTest < ActiveSupport::TestCase
    test "save with name" do
      michael = Voter.create!(name: "Michael", party: "Democrat", zipcode: 11215)
      assert michael.save
    end

    test "zipcode is valid" do
      michael = Voter.create!(name: "Michael", party: "Democrat", zipcode: 11215)
      assert michael.save
    end

    test "has voter_id" do
      janice = Voter.create!(name: "Janice", party: "Republican", zipcode: "12124")
      ellis = Voter.create!(name: "Ellis", party: "Republican", zipcode: "12126")
      donald = Voter.create!(name: "Donald", party: "Democrat", zipcode: "16615")
      gina = Voter.create!(name: "Gina", party: "Republican", zipcode: "00256")
      assert janice.id
      assert gina.id
    end

  

end
