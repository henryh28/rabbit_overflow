require 'spec_helper'

describe Answer do
  context "columns" do
    it { should respond_to :content}
    it { should respond_to :author}
  end

  context "association" do
    it { should belong_to :question }
    it { should have_many :votes}
  end

end
