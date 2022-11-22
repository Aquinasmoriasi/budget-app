class Group < ApplicationRecord
  belongs_to :user
  has_many :expenses, through: :group_expenses
  has_many :group_expenses, dependent: :destroy
end
