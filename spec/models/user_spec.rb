require 'rails_helper'

RSpec.describe User, type: :model do
  let(:my_user) { User.create!( email: "user.name@gmail.com", password: "abc123" ) }

  it { is_expected.to have_many(:wikis) }

  describe "attributes" do
    it "has email and password attributes" do
      expect(my_user).to have_attributes( email: "user.name@gmail.com", password: "abc123" )
    end
  end
end
