class Tag < ApplicationRecord
  has_many :poem_tags
  has_many :poems, through: :poem_tags

end
