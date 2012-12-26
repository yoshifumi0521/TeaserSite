class Admin < ActiveRecord::Base
  attr_accessible :hashed_password, :name

  validates :name, :presence => true,  :uniqueness => true
  validates :hashed_password,:presence => true,:uniqueness => true


end
