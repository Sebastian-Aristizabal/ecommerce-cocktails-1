class Cocktail < ApplicationRecord
  belongs_to :store
  belongs_to :category
end
