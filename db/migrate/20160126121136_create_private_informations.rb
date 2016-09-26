class CreatePrivateInformations < ActiveRecord::Migration
  def change
    create_table :private_informations do |t|
      t.text :text
      t.text :title

      t.timestamps null: false
    end
  end
end
