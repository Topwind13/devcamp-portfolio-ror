class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.ios
  	where(subtitle: 'IOS')
  end

  scope :ror_items, -> {where(subtitle: 'Ruby On Rails')}


  after_initialize :set_defaults

  def set_defaults
  	self.main_image ||= "https://via.placeholder.com/600x400"
  	self.thumb_image ||= "https://via.placeholder.com/300x200"
  end
end
