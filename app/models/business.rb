class Business < ApplicationRecord
  has_many :employees, :dependent => :destroy
end
