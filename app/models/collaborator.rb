class Collaborator < ApplicationRecord
  attr_accessor :email

  belongs_to :user
  belongs_to :wiki

  validates_uniqueness_of :user,
                          :scope => :wiki_id,
                          :message => "%{user.username} is already a Collaborator"

end
