class CreateFlowerTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :flower_tag_relations do |t|
      t.references :flower, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
