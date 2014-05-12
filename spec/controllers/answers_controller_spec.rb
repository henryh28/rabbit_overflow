require 'spec_helper'

describe AnswersController do
  let!(:user) { FactoryGirl.create :user }
  let!(:question) { FactoryGirl.create :question }


  context "create" do
    it "creates a new answer to a question" do
      # expect {
      #   post :create, answer: FactoryGirl.attributes_for(:answer)
      #   }.to change { Answer.count }.by(1)
    end
  end
end
