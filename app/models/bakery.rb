class Bakery < ApplicationRecord
  has_many :pastries, dependent: :destroy
  validates_presence_of :name, :rank
  validates :open,
            :presence => {:if=> 'open.nil?'}
  default_scope {order(created_at: :desc)}
end
