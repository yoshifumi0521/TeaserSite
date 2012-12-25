#coding: utf-8
class User < ActiveRecord::Base
  
  belongs_to :pattern
  
  attr_accessible :answer, :email, :name

  validates :name, :presence => true 
  validates :answer, :presence => true
  validates :email, :presence => true,  :uniqueness => true










end
