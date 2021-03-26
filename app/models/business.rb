class Business < ApplicationRecord
  has_many :employees
  validates_presence_of :name, :rank


end
