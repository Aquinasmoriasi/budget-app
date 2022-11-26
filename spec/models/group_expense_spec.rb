require 'rails_helper'

RSpec.describe GroupExpense, type: :model do
  describe 'Group model' do
    before(:each) do
      @user = User.create! name: 'Anonymus', email: 'anonymus@anon.co', password: 'password'
      @group = Group.create! name: 'McGyver', icon: 'shorturl.at/nxQZ7', user: @user
      @expense = Expense.create! name: 'Pork ribs', amount: 13, author: @user
    end

    it 'creates a linking table' do
      group_expense = GroupExpense.create! expense_id: @expense.id, group_id: @group.id
      expect(group_expense).to be_valid
    end
  end
end
