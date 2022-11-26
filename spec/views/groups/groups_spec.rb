require 'rails_helper'

RSpec.describe 'Groups', type: :feature do
  describe 'GET groups#index' do
    before(:each) do
      user = User.create name: 'anonymus', email: 'anonymus@anon.co', password: 'password'

      visit new_user_session_path
      page.fill_in placeholder: 'Email', with: user.email
      page.fill_in placeholder: 'password', with: user.password
      click_button 'Next'
      3.times do
        @group = Group.create! name: 'McGyver', icon: 'shorturl.at/nxQZ7', user:
      end
    end

    it 'should display the category names that have been added' do
      visit root_path
      expect(page).to have_content(@group.name).thrice
    end

    it "should render page contenting 'Food'" do
      visit root_path
      expect(page).to have_content('CATEGORIES')
    end
  end
end
