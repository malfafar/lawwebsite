class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name, null: false, default: ""
      t.text :description, null: false, default: ""
      t.string :author, null: false, default: ""
      t.integer :category

      t.timestamps null: false
    end
  end
end
