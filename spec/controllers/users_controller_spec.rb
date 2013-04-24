require 'spec_helper'
describe UsersController do
  render_views

    describe "GET 'index'" do
      
      it "devrait reussir" do
        get 'index'
          response.should be_success
        end
      end

end
