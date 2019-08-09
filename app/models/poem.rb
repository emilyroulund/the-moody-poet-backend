class Poem < ApplicationRecord
  has_many :poem_tags
  has_many :tags, through: :poem_tags
  has_many :favorites
  has_many :users, through: :favorites


end
