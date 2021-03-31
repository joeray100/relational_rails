class Pastry < ApplicationRecord
  belongs_to :bakery

  def self.gluten_free_true
    where("gluten_free = 'true'")
  end

  def self.order_by_name
    order('name ASC')
  end
end
