class CreateAuctionThings < ActiveRecord::Migration
  def change
      create_table :auction_things do |t|
      t.string :auction_title
      t.text :auction_desc
      t.timestamps null: false
    end
  end
end
