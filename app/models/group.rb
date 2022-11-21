class Group < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :expenses
end
