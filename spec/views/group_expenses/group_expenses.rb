require 'rails_helper'

RSpec.describe 'GroupExpenses', type: :feature do
  describe 'GET group_expenses#new' do
    before(:each) do
      user = User.create name: 'anonymus', email: 'anonymus@anon.co', password: 'password'

      visit new_user_session_path
      page.fill_in placeholder: 'Email', with: user.email
      page.fill_in placeholder: 'password', with: user.password
      click_button 'Next'
      visit new_group_expense_path
    end

    it 'should have a name input field' do
      expect(page).to have_field('Name')
    end

    it 'should have a name input field' do
      expect(page).to have_field('Amount')
    end
  end
end
