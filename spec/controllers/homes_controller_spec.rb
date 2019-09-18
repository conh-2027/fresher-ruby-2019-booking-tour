require "rails_helper"

RSpec.describe HomesController, type: :controller do
  describe "GET #index" do
    it "is expected render template" do
      expect{response.to render_template :index}
    end
  end
 
end
