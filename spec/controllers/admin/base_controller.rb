require "rails_helper"

RSpec.describe Admin::BaseController, type: :controller do
  describe "GET #index" do
    it "is expected render template" do
      expect{response.to render_template :index}
    end

    it "is expected status 200" do
      expect{response.status eq 200 }
    end
  end
  
end
