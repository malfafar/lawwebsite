class Benefit < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description

  has_many :protocols
  belongs_to :category

  accepts_nested_attributes_for :protocols, allow_destroy: true

  # include Bootsy::Container
  def self.search(search)
    where('title ILIKE :search OR description ILIKE :search', search: "%#{search}%")
  end
end
