require "rails_helper"

describe "User Attribute Requirements on Create", :type => :model do
    
    it "is valid with valid attributes" do
        expect(User.new).to be_valid
    end
    it "is not valid without an email" do
        user = User.new(email: nil)
        expect(User.new).to_not be_valid
    end
    it "is not valid without a password" do
        user = User.new(password: nil)
        expect(User.new).to_not be_valid
    end

end