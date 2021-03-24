class Bakery < ApplicationRecord
  has_many :pastries, :dependent => :destroy
end
