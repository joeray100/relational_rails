class Business < ApplicationRecord
  has_many :employees

  validates_presence_of :name, :rank

  default_scope { order(created_at: :desc) }
end
