require 'rails_helper'

RSpec.describe User, type: :model do

  it "is valid with a name" do
  	user = User.new(name: "JohnDoe")
  	expect(user).to be_valid
  end

	it "is invalid without a name" do
		user = User.new(name: nil)
		user.valid?
		expect(user.errors[:name]).to include("can't be blank")
	end

	it "does not allow duplicate user names" do
		user = User.create( name: "JohnDoe")
		user_2 = User.create( name: "JohnDoe")
		user_2.valid?
		expect(user_2.errors[:name]).to include("has already been taken")
	end

	it "does not allow user names less than 3 characters" do
		user = User.create( name: "Jo")
		user.valid?
		expect(user.errors[:name]).to include("is too short (minimum is 3 characters)")
	end

	describe "Associations" do
    it { should have_many(:articles) }
    it { should have_many(:votes) }
  end

end
