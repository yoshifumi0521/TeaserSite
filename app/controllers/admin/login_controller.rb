#coding: utf-8
class Admin::LoginController < Admin::Base

  #applicationコントローラーのauthorizeメソッドは実行しないようにする。
  skip_before_filter :authorize

  def index

  

  end

  #認証のコントローラー
  def auth

    require "bcrypt"

    @name = params["name"]
    @password = params["password"]

    return raise if @name.empty? || @password.empty?
    
    @admin_user = Admin.find_by_name(@name)

    return raise unless @admin_user
  
    #パスワードの認証
    return raise unless BCrypt::Password.new(@admin_user.hashed_password) == @password
  
    if @admin_user
      
      #名前とパスワードが一致したら、クッキーに保存する。
      cookies.signed[:admin_id] ={ value: @admin_user.id ,expires: 1.days.from_now }     
      #リダイレクトする。
      redirect_to admin_top_index_path 
      return
    else
      
      return raise 

    end
  


  end

  
  def logout

    cookies.delete :admin_id unless @admin_user    
    
    return redirect_to :admin_root



  end












end
