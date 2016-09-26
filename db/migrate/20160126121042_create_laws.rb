class CreateLaws < ActiveRecord::Migration
  def change
    create_table :laws do |t|
      t.text :url
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
