class AddCustomPasswordConfirmation < ActiveRecord::Migration
  def self.up
    add_column :members, :confirmation_token, :string
    add_column :members, :confirmed_at, :datetime
    add_column :members, :confirmation_sent_at, :datetime
    # add_column :members, :unconfirmed_email, :string # Only if using reconfirmable
    add_index :members, :confirmation_token, :unique => true

    Member.update_all({:confirmed_at => DateTime.now, :confirmation_sent_at => DateTime.now})
  end

  def self.down
    remove_column :members, [:confirmed_at, :confirmation_token, :confirmation_sent_at]
  end
end
