class CreateFlowers < ActiveRecord::Migration[6.0]
  def change
    create_table :flowers do |t|

      t.string     :title,          null: false
      t.string     :place
      t.integer    :category_id,    null: false
      t.integer    :subcategory_id, null: false

      t.references :user,       foreign_key: true

      t.timestamps
    end
  end
end
