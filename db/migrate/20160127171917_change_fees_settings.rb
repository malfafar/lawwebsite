class ChangeFeesSettings < ActiveRecord::Migration
  def up
      change_column :fees, :value, :decimal, precision: 8, scale: 2
    end

    def down
      change_column :fees, :value, :decimal
    end
end
