class Cocktail < ApplicationRecord
  has_one_attached :photo
  belongs_to :store
  belongs_to :category
end
