class AddInfoToMembers < ActiveRecord::Migration
  def change
    add_column :members, :name, :string, null: false, default: ""
    add_column :members, :membership_number, :integer
    add_column :members, :naturality, :string, null: false, default: ""
    add_column :members, :birthday, :date,null: false, default: Date.today
    add_column :members, :residence, :text, null: false, default: ""
    add_column :members, :zip_code, :string, null: false, default: ""
    add_column :members, :phone, :string, null: false, default: ""
    add_column :members, :office, :string, null: false, default: ""
    add_column :members, :office_address, :string, null: false, default: ""
    add_column :members, :office_zipcode, :string, null: false, default: ""
    add_column :members, :attached_registry, :boolean, default: true
    add_column :members, :office_phone, :string, null: false, default: ""
    add_column :members, :office_fax, :string, null: false, default: ""
    add_column :members, :location_class, :string, null: false, default: ""
    add_column :members, :career_start_date, :date
    add_column :members, :personal_class, :string, null: false, default: ""
    add_column :members, :class_promotion_date, :date
    add_column :members, :practice_level, :string, null: false, default: ""
    add_column :members, :level_start_date, :date
    add_column :members, :pending, :boolean, null: false, default: false
    add_column :members, :role, :integer, null: false, default: 0
  end
end
