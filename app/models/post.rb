class Post < ActiveRecord::Base
  has_attached_file :image, styles: {normal: "545x340#", medium: "335x225#", thumb: "100x100#" },
                    default_url: "/missing/posts/images/:style/missing.jpg",
                    :convert_options =>
                    {
                      :large => "-quality 80 -interlace Plane",
                      :thumb => "-quality 80 -interlace Plane"
                    },
                    processors: [:thumbnail, :compression]
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_attached_file :document
  validates_attachment_content_type :document, :content_type => ['image/jpeg', 'image/png', 'application/pdf']
  validates_attachment_file_name :document, :matches => [/png\Z/, /jpe?g\Z/, /pdf\Z/]

  validates_presence_of :title

  def self.search(search)
    where('title ILIKE :search OR description ILIKE :search', search: "%#{search}%")
  end

end
