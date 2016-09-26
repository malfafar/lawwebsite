class AddOfficeEmailToMember < ActiveRecord::Migration
  def change
    add_column :members, :office_email, :string
  end
end
