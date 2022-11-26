require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Group model' do
    before(:each) do
      @user = User.create name: 'Anonymus', email: 'anonymus@anon.co', password: 'password'
    end

    it 'accepts a valid name' do
      group = Group.create! name: 'McGyver', icon: 'shorturl.at/nxQZ7', user: @user
      expect(group).to be_valid
    end

    it 'accepts a valid icon url' do
      group = Group.create! name: 'McGyver', icon: 'shorturl.at/nxQZ7', user: @user
      expect(group).to be_valid
    end
  end
end
