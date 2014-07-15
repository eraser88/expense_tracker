class Expense < ActiveRecord::Base
  validates :amount, :category, :date, presence: true
end
