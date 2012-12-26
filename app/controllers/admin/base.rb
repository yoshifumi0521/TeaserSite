#coding: utf-8

class Admin::Base < ApplicationController

  before_filter :authorize

  private
  #認証をする。
  def authorize
    
    if cookies.signed[:admin_id]
      @admin_user = Admin.find_by_id(cookies.signed[:user_id])
      cookies.delete :user_id unless @admin_user
    end
  
  end

  def before_filter
    
    return raise Forbidden unless @admin_user
    
  end




end





