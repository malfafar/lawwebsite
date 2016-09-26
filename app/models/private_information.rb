class PrivateInformation < ActiveRecord::Base

  has_attached_file :document
  validates_attachment_content_type :document, :content_type => ['image/jpeg', 'image/png', 'application/pdf']
  validates_attachment_file_name :document, :matches => [/png\Z/, /jpe?g\Z/, /pdf\Z/]

  def self.search(search)
    where('title ILIKE :search OR text ILIKE :search', search: "%#{search}%")
  end
end
