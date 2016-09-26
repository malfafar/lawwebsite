class Law < ActiveRecord::Base
  def self.search(search)
    where('title ILIKE :search OR description ILIKE :search', search: "%#{search}%")
  end
end
