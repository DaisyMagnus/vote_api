require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  test "has voter_id" do
    yes = Vote.create!(voter_id: 2, candidate_id: 7)
    assert_equal 2, yes.voter_id
  end

  test "has candidate_id" do
    yes = Vote.create!(voter_id: 2, candidate_id: 7)
    assert_equal 7, yes.candidate_id
  end

  test "can be created" do
    no = Vote.create!(voter_id: 2, candidate_id: 6)
    assert no.save
  end

  test "vote can be created" do
  possible = Vote.new(candidate_id: 4)
  refute possible.save
  probable = Vote.new(token_key_string: "1234567890")
  assert probable.save
  end

end
