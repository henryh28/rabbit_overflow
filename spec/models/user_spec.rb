require 'spec_helper'

describe User do
  it "should find a created user" do
    guest = User.create(username: "guest", password: "password")
    expect(User.find_by_username("guest")).not_to be_nil
  end

  it "should encrypt the user's password" do
    guest = User.create(username: "guest", password: "password")
    guest.reload
    expect(guest.password).to_not eq("password")
  end

  context "columns" do
    it { should respond_to :username }
    it { should respond_to :password }
  end

  context "associations" do
    it { should have_many(:questions) }
    it { should have_many(:votes) }
  end
end
