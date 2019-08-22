class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # when we delate a restaurant we also delete the reviews he migh have
  validates :name ,uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true

  validates :category, presence: true, inclusion: { in: %W(chinese italian japanese french belgian) ,
    message: "%{value} is not include"}
end
