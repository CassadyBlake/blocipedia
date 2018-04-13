require 'rails_helper'

RSpec.describe Wiki, type: :model do
  let(:my_user) { User.create!( email: "user.name@gmail.com", password: "abc123" ) }
  let(:my_wiki) { Wiki.create!( title: "New Wiki", body: "Body of new wiki", user: my_user ) }

  describe "attributes" do
    it "has title, body and user attributes" do
      expect(my_wiki).to have_attributes( title: my_wiki.title, body: my_wiki.body, user: my_user )
    end
  end

end
