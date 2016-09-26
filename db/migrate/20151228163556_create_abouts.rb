class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.text :objectives, null: false, default: ""
      t.text :statutes, null: false, default: ""
      t.text :social_bodies, null: false, default: ""
      t.text :message, null: false, default: ""

      t.timestamps null: false
    end
  end
end
