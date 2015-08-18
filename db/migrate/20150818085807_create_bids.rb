class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :amount_in_cents
      t.integer :auction_thing_id
      t.timestamps null: false
    end
  end
end
