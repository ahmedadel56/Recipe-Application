require 'rails_helper'

RSpec.describe 'Home', type: :request do
  describe 'GET /' do
    before(:example) { get '/' }

    it 'renders the home page' do
      get root_path
      expect(response).to render_template('home/index')
    end

    it 'responds with a 200 status code' do
      expect(response).to have_http_status(:ok)
    end
  end
end
