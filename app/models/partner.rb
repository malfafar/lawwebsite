class Partner < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "1920x1080#", :medium => "300x300#", :thumb => "200x100#" },
                            :default_url => "/missing/partners/images/:style/missing.jpg",
                            :convert_options =>
                            {
                              :large => "-quality 80 -interlace Plane",
                              :thumb => "-quality 80 -interlace Plane"
                            },
                            processors: [:thumbnail, :compression]
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates_presence_of :name
  validates_presence_of :url

  def self.search(search)
    where('name ILIKE :search OR description ILIKE :search', search: "%#{search}%")
  end

end
