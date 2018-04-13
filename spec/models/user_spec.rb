require 'rails_helper'

RSpec.describe User, type: :model do
  let(:my_user) { User.create!( name: "User Name", email: "user.name@gmail.com", password: "abc123" ) }

  describe "attributes" do
    it "has name, email and password attributes" do
      expect(my_user).to have_attributes( name: "User Name", email: "user.name@gmail.com", password: "abc123" )
    end
  end
end
