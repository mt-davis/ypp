require 'rails_helper'

RSpec.describe "Pforms", type: :request do
  describe "GET /pforms" do
    it "works! (now write some real specs)" do
      get pforms_path
      expect(response).to have_http_status(200)
    end
  end
end
