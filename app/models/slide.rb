class Slide < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "1920x1080#", :medium => "800x450#" },
      :default_url => "/images/slider/:style/default.png",
      :convert_options =>
      {
        :large => "-quality 80 -interlace Plane",
        :thumb => "-quality 80 -interlace Plane"
      },
      processors: [:thumbnail, :compression]
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
