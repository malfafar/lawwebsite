class About < ActiveRecord::Base

  validates_presence_of :objectives
  validates_presence_of :message

end
