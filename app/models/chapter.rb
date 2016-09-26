class Chapter < ActiveRecord::Base
  validates :text, presence: true
  validates :number, presence: true
  validates :title, presence: true
  def self.search(search)
    where('title ILIKE :search OR text ILIKE :search', search: "%#{search}%")
  end
end
