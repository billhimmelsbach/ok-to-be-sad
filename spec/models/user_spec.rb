require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = User.create(first_name: "Test", last_name: "Tester", email: "testytest@test.com", password: "testerific", password_confirmation:"testerific")
  end

  describe "Create" do
    subject(:user) { FactoryGirl.create(:user) }

    it "should create a new instance of class User" do
      expect(@user).to be_an_instance_of(User)
    end

    it "should have a first name" do
      expect(@user.first_name).to_not be_nil
    end

    it "should have a last name" do
      expect(@user.last_name).to_not be_nil
    end

    it "should have a valid email" do
      FactoryGirl.build(:user, :email => "EmailWithoutTheAtSign").should_not be_valid
    end

    it "should encrypt user password" do
      expect(@user.password_digest).to_not eq("testerific")
    end
  end

  describe "when email address is already taken" do
    before do
      @test_email = FactoryGirl.build(:user, :email => "testytest@test.com")
    end

    it "should have a unique email" do
      expect(@test_email).not_to be_valid
    end

  end
end
