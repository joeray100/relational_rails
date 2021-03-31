class Employee < ApplicationRecord
  belongs_to :business
  validates_presence_of :name, :hours_worked, :likes_job


  def self.true_employees
    where("likes_job = 'true'")
  end
end
