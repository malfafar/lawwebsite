class ChangePendingDefault < ActiveRecord::Migration
  def change
    change_column :members, :pending, :boolean, null: false, default: true
  end
end
