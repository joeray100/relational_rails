class Employee < ApplicationRecord
  belongs_to :business
  validates_presence_of :name, :hours_worked
  validates :likes_job, inclusion: [true,false]

  def self.true_employees
    where("likes_job = 'true'")
  end

  def self.order_by_name
    order('name ASC')
  end
end
