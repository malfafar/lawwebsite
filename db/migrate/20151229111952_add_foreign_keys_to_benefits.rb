class AddForeignKeysToBenefits < ActiveRecord::Migration
  def change
    add_column :benefits, :category_id, :integer
  end
end
