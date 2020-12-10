class CreateSkins < ActiveRecord::Migration[6.0]
  def change
    create_table :skins do |t|
      t.string     :medal,   null: false
      t.integer    :cost
      t.integer    :price
      t.binary     :icon

      t.timestamps
    end
  end
end
