class Pin < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true
  # Google Rails Validations for different types, such as length
end
