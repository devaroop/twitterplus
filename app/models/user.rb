class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :password_confirmation

  #make available all authlogic authentication methods
  acts_as_authentic

  #relations
  has_and_belongs_to_many :books

  #validations
  validates :username, :presence => true, :uniqueness => true
  validates_confirmation_of :password
  validates :email, presence: true, format:  {with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}

end
