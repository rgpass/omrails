class Pin < ActiveRecord::Base
  attr_accessible :description, :image


  validates :description, presence: true # Description has to be present
  validates :user_id, presence: true # Can't post things without being logged in
  validates_attachment :image, presence: true,
  															content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
  															size: { less_than: 5.megabytes }
  # Google Rails Validations for different types, such as length

  belongs_to :user
  # Google Rails Associations for more options
  has_attached_file :image, styles: { medium: "320x240>"}
  

  
end
