class Product < ApplicationRecord
    has_many :comments ,dependent: :destroy
    validates :name, :price, presence: true
end
