require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User creation" do
    let(:valid_user){User.new(email: "email@example.com", password: "foobar123", password_confirmation: "foobar123")}
    let(:invalid_user){User.new(email: "email@example.com", password: "foobar123")}
    it "creates a valid user" do
      expect(valid_user.valid?).to be true
      expect{ valid_user.save }.to change(User, :count).by(1)
    end

  #TODO figure out why this fails
    xit "does prevents save of an invalid user" do
      expect( invalid_user.valid? ).to be false
    end
  end

  describe "User fields" do
    xit "requires a user to have a username" do

    end

    xit "prevents multiple users from having the same user name" do

    end

    xit "allows a user to have a set of permissions defined on them" do

    end
  end
end
