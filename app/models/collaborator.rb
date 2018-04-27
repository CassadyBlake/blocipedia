class Collaborator < ApplicationRecord
  attr_accessor :email

  belongs_to :user
  belongs_to :wiki
end
