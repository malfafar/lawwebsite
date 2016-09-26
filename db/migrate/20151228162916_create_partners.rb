class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name, null: false, default: ""
      t.text :description, null: false, default: ""
      t.string :url, null: false, default: ""

      t.timestamps null: false
    end
  end
end
