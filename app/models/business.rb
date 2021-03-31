class Business < ApplicationRecord
  has_many :employees, dependent: :destroy

  validates_presence_of :name, :rank, :big_company
  # validates :big_company,
  #           :presence => { :if => :big_company.nil? }
  #
  # default_scope { order(created_at: :desc) }
end
