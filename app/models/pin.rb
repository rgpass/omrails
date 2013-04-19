class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true
  # Google Rails Validations for different types, such as length

  belongs_to :user
  # Google Rails Associations for more options

  validates :user_id, presence: true
end
