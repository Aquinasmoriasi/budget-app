require 'rails_helper'

RSpec.describe 'Groups', type: :request do
  describe 'GET groups#index' do
    before(:each) do
      user = User.create name: 'anonymus', email: 'anonymus@anon.co', password: 'password'
      post user_session_path, params: { user: { email: user.email, password: user.password } }
      get root_path
    end

    it 'should return http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render correct template' do
      expect(response).to render_template(:index)
    end

    it "should contain the 'CATEGORIES' header" do
      expect(response.body).to include('CATEGORIES')
    end
  end
  describe 'GET groups#show' do
    before(:each) do
      user = User.create name: 'anonymus', email: 'anonymus@anon.co', password: 'password'
      post user_session_path, params: { user: { email: user.email, password: user.password } }
      group = Group.create! name: 'McGyver', icon: 'shorturl.at/nxQZ7', user: user
      get group_path(group)
    end

    it 'should return http success' do
      expect(response).to have_http_status(:success)
    end

    it 'should render correct template' do
      expect(response).to render_template(:show)
    end

    it "should render page contenting 'Food'" do
      expect(response.body).to include('DETAILS')
    end
    it 'should have a link to add an expense' do
      expect(response.body).to include('/group_expenses/new')
    end
  end
end
