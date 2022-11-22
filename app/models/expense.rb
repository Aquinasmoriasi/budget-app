class Expense < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :groups, through: :group_expenses
  has_many :group_expenses, dependent: :destroy
end
