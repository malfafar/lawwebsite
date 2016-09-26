class Job < ActiveRecord::Base
  has_attached_file :document
  validates_attachment :document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

  validates_presence_of :name

  def self.search(search)
    where('name ILIKE :search OR description ILIKE :search OR author ILIKE :search', search: "%#{search}%")
  end
end
