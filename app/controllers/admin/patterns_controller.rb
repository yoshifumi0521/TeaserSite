#coding: utf-8
class Admin::PatternsController < Admin::Base
  
  before_filter :login_required

  def show
  
    @pattern = Pattern.find_by_id(params[:id])
    return raise unless @pattern

    @users = @pattern.users





  end













end
