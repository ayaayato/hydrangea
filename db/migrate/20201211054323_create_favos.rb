class CreateFavos < ActiveRecord::Migration[6.0]
  def change
    create_table :favos do |t|
      t.references :user, null: false, foreign_key: true
      t.references :flower, null: false, foreign_key: true

      t.timestamps
      t.index [:user_id, :flower_id], unique: true
    end
  end
end
