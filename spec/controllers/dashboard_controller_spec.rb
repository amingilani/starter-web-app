# frozen_string_literal: true
require 'rails_helper'

RSpec.describe DashboardController, type: :controller do
  describe 'GET #show' do
    it 'returns http redirect when logged out' do
      get :show
      expect(response).to have_http_status(:redirect)
    end
    # it 'returns http success when logged in' do
    #   user = create(:user)
    #   login_as(user, scope: :user)
    #   get :show
    #   expect(response).to have_http_status(:success)
    # end
  end
end
