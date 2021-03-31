class Business < ApplicationRecord
  has_many :employees, dependent: :destroy

  validates_presence_of :name, :rank
  validates :big_company, inclusion: [true,false]

  # validates :big_company,
  #
  #           :presence => { :if => :big_company.nil? }
  #
  # default_scope { order(created_at: :desc) }
end
