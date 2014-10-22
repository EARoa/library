class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :patron_id
      t.string :book_id
      t.string :integer
      t.datetime :checked_out_at
      t.datetime :checkout_in_at

      t.timestamps
    end
  end
end
