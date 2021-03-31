class Employee < ApplicationRecord
  belongs_to :business

  def self.true_employees
    where("likes_job = 'true'")
  end
end
