#coding: utf-8
class Pattern < ActiveRecord::Base

  has_many :users

  attr_accessible :image, :question
  
  validates :question, :presence => true,  :uniqueness => true












end
