require 'rails_helper'

RSpec.describe Expense, type: :model do
  describe 'Expense model' do
    before(:each) do
      @user = User.create name: 'Anonymus', email: 'anonymus@anon.co', password: 'password'
    end

    it 'accepts a valid name and amount' do
      expense = Expense.create! name: 'Pork ribs', amount: 13, author: @user
      expect(expense).to be_valid
    end
  end
end
