class GroupExpense < ApplicationRecord
  belongs_to :expenses
  belongs_to :groups
end
