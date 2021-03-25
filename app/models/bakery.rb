class Bakery < ApplicationRecord
  has_many :pastries
  validates_presence_of :name, :rank
end
