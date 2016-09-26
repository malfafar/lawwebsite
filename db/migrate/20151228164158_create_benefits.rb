class CreateBenefits < ActiveRecord::Migration
  def change
    create_table :benefits do |t|
      t.string :title, null: false, default: ""
      t.text :description, null: false, default: ""

      t.timestamps null: false
    end
  end
end
