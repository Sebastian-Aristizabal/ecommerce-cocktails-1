class Store < ApplicationRecord
  belongs_to :user
  has_many :cocktails, dependent: :destroy
end
