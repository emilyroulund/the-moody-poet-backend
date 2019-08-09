class Tag < ApplicationRecord
  has_many :poem_tags
  has_many :poems, through: :tags

end
