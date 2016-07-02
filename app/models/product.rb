class Product < ActiveRecord::Base
  has_one :photo

  validates :title,     presence: true
  validates :quantity,  presence: true
  validates :price,     presence: true


  accepts_nested_attributes_for :photo
end
