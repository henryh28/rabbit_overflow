require 'spec_helper'

describe Question do
  context "columns" do
    it { should respond_to :title }
    it { should respond_to :content }
    it { should respond_to :best_answer_id }
    it { should respond_to :author }
  end

  context "associations" do
    it { should belong_to :user }
    it { should have_many :answers }
    it { should have_many :votes }
  end



end
