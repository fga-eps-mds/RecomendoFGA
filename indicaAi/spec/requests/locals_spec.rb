# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'Local API', type: :request do
  let!(:local) { create_list(:local, 10) }
  let(:local_id) { locals.first.id }

  describe 'GET /locals' do
    # make HTTP get request before each example
    before { get '/locals/' }

    it 'returns locals' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /locals/name/:name' do
    # make HTTP get request before each example
    before { get '/locals/name/:name' }

    it 'return local by name' do
      expect(json).not_to be_empty
    end
  end
end
