#coding: utf-8

class Admin::Base < ApplicationController

  before_filter :authorize

  private
  #認証をする。
  def authorize
    
    if cookies.signed[:admin_id]
      @admin_user = Admin.find_by_id(cookies.signed[:admin_id])
      logger.debug(@admin_user.inspect)
      cookies.delete :admin_id unless @admin_user
    end
  
  end

  def login_required
    
    return raise Forbidden unless @admin_user
    
  end




end





