class Pastry < ApplicationRecord
  belongs_to :bakery
  validates_presence_of :name, :price
  validates :gluten_free, inclusion: [true,false]

  def self.gluten_free_true
    where("gluten_free = 'true'")
  end

  def self.order_by_name
    order('name ASC')
  end
end
