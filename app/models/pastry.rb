class Pastry < ApplicationRecord
  belongs_to :bakery

  def self.gluten_free_true
    where("gluten_free = 'true'")
  end
end
