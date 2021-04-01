class Bakery < ApplicationRecord
  has_many :pastries, dependent: :destroy

  validates_presence_of :name, :rank

  # validates :open, inclusion: [true,false]

  def self.most_recently_created
    order(created_at: :desc)
  end

