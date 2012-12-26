#coding: utf-8
class Admin::LoginController < Admin::Base


  def index

  

  end

  #認証のコントローラー
  def auth

    logger.debug(params)

    @name = params["name"]
    @password = params["password"]

    logger.debug(@name.empty?)

    return raise if @name.empty? || @password.empty?

    






  end





end
