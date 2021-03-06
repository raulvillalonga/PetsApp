require 'rails_helper'

RSpec.describe PetsController, type: :controller do
  
  let(:pet) { FactoryGirl.create(:pet) }
  login_user

  describe "GET #index" do
    before(:each) do
      get :index
    end
    it "should have a current_user" do
      expect(subject.current_user).to_not eq(nil)
    end
    it "responds successfully" do
      expect(response).to be_success
    end
    it "responds successfully with an HTTP 200 status code" do
      expect(response).to have_http_status(200)
    end
    it "renders the index template" do
      expect(response).to render_template(:index)
    end
  end

end
