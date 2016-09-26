class RemoveDefaultFromBirthday < ActiveRecord::Migration
  def up
    change_column :members, :birthday, :date ,null: true, default: nil
  end

  def down
    change_column :members, :birthday, :date,null: false, default: Date.today
  end
end
