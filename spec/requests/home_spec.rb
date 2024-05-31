require 'rails_helper'

RSpec.describe "Home", type: :request do
  let(:home_message) { "Hello Madison, WI!" }
  let!(:testing) { create(:testing, message: home_message) }

  it "responds successfully" do
    get root_path
    expect(response).to be_successful
    expect(response).to have_http_status(200)
  end

  it 'includes the right message' do
    get root_path
    expect(response.body).to include(home_message + "ERROR")
  end
end
