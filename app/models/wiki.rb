class Wiki < ApplicationRecord
  belongs_to :user
  has_many :collaborators
  before_save { self.private ||= false }
end
