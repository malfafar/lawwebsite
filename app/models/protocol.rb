class Protocol < ActiveRecord::Base
  validates_presence_of :name

  belongs_to :benefit

end
