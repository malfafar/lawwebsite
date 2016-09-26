class CreateSocialBodies < ActiveRecord::Migration
  def change
    create_table :social_bodies do |t|
      t.string :name
      t.integer :role
      t.string :position

      t.timestamps null: false
    end
  end
end
