class Bid < ActiveRecord::Base
  belongs_to :auction_thing

  def dollarise
      amount_in_cents/100.0
  end



end
