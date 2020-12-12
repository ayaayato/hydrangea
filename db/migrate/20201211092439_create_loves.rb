class CreateLoves < ActiveRecord::Migration[6.0]
  def change
    create_table :loves do |t|
      t.references :user, foreign_key: true
      t.references :like, foreign_key: { to_table: :users }
      t.timestamps
      t.index [:user_id, :like_id], unique: true
    end
  end
end
