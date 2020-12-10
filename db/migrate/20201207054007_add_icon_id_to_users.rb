class AddIconIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :icon_ids, :integer
  end
end
