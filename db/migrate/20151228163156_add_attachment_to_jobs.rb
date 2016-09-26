class AddAttachmentToJobs < ActiveRecord::Migration
  def up
     add_attachment :jobs, :document
   end

   def down
     remove_attachment :jobs, :document
   end
end
