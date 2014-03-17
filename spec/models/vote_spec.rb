require 'spec_helper'

describe Vote do
  context "association" do
    it { should belong_to :user }
  end

end
