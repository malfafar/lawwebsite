class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.text :title
      t.integer :number
      t.text :text

      t.timestamps null: false
    end
  end
end
