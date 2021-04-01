class Business < ApplicationRecord
  has_many :employees, dependent: :destroy

  validates_presence_of :name, :rank

  def self.most_recently_created
    order(created_at: :desc)
  end
end
