require 'spec_helper'

describe Micropost do

  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @micropost = Micropost.new(content: "Lorem ipsum", user_id: user.id)
  end

  subject { @micropost }

  it { should respond_to(:content) }
  it { should respond_to(:user_id) }

  describe "when user_id is not present" do
    before { @micropost.user_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @micropost.content = " " }
    it { should_not be_valid }
  end

#I want to change this project to have unlimited content length
  describe "content should be unlimited length" do
    before { @micropost.content = "a" * 141 }
    it { be_valid }
  end
  describe "content under 140 chars is valid as well" do
    before { @micropost.content = "a" * 41 }
    it { be_valid }
  end
end
