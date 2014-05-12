require 'spec_helper'

describe QuestionsController do

  context "index" do
    it "should display the main page" do
      get :index
      expect(response).to be_success
    end
  end

  context "show" do
    let!(:user) { FactoryGirl.create :user }
    let!(:question) { FactoryGirl.create :question, user: user }
    it "displays a question successfully" do
      get :show, id: question.id
      expect(response).to be_success
    end
  end

  context "create" do
    let!(:question) { FactoryGirl.create :question }
    it "Creates a question successfully" do
      expect(Question.last.id).to eq(question.id)
    end
  end

end

