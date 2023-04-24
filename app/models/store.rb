class Store < ApplicationRecord
  belongs_to :user
  has_many :cocktails, dependent: :destroy
  validates :name, :address, :time_open, :time_close, presence: true

  # validate :hour_invalid
  # before_save :hour_invalid

  # def hour_invalid
  #   if self.time_open <= self.time_close
  #     self.errors.add :time_open, "can not be less or equal than time close \n"
  #   end
  # end
end
