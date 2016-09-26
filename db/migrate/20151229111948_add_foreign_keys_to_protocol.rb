class AddForeignKeysToProtocol < ActiveRecord::Migration
  def change
    add_column :protocols, :benefit_id, :integer
  end
end
