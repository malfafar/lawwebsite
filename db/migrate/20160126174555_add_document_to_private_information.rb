class AddDocumentToPrivateInformation < ActiveRecord::Migration
  def up
     add_attachment :private_informations, :document
   end

   def down
     remove_attachment :private_informations, :document
   end
end
