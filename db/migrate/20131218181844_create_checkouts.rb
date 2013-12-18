class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id, null: false
      t.boolean :checked_out, null: false, default: false

      t.timestamps
    end
  end
end
