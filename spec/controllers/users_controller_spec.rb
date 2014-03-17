require 'spec_helper'

describe UsersController do

  context "create" do
    it "creates an user account" do
      expect {
        post :create, new_user: { username: "guest", password: "password" }
      }.to change { User.count }.by(1)
    end
  end

end
