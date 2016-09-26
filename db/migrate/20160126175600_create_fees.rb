class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.decimal :value
      t.string :name

      t.timestamps null: false
    end
  end
end
