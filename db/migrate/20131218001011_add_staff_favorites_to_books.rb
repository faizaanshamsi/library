class AddStaffFavoritesToBooks < ActiveRecord::Migration
  def up
    add_column :books, :staff_favorite, :boolean
  end

  def down
    remove_column :books, :staff_favorite
  end
end
