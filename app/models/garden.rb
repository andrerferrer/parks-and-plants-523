class Garden < ApplicationRecord
  # associations
  # validations
  validates :name, presence: true
  validates :banner_url, presence: true
end
