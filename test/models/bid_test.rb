require 'test_helper'

class BidTest < ActiveSupport::TestCase

  test "dollartest" do
    bid = Bid.new
    bid.amount_in_cents = 135
    assert_equal bid.dollarise, 1.35

  end
  # test "the truth" do
  #   assert true
  # end
end
