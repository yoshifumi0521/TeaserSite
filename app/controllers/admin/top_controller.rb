#coding: utf-8
class Admin::TopController < Admin::Base
  
  before_filter :login_required

  def index

    @patterns = Pattern.all
    
    
  
  end










end
