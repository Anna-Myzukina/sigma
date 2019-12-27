# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe 'GET #home' do
    it 'returns http success' do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #checklist' do
    it 'returns http success' do
      get :checklist
      expect(response).to have_http_status(:success)
    end
  end
end
