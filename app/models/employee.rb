class Employee < ApplicationRecord
  belongs_to :business

  def self.true_employees
    where("likes_job = 'true'")
  end

  def self.order_by_name
    order('name ASC')
  end
end
