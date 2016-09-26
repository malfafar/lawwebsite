class AddAttachmentsToPost < ActiveRecord::Migration
  def up
     add_attachment :posts, :image
     add_attachment :posts, :document

   end

   def down
     remove_attachment :posts, :image
     remove_attachment :posts, :document
   end
end
