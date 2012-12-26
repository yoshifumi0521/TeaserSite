#coding: utf-8
class UsersController < ApplicationController
  
  
  def create
 
    @pattern = params[:pattern]

    @user = User.new
    @user.attributes = params[:user]
    @user.pattern_id = @pattern
    
    #パターンごとに変える。
    if @pattern == "1"


    elsif @pattern == 2 



    elsif @pattern == 3




    elsif @pattern == 4




    elsif @pattern == 5




    end


    #バリデーションを通してチェックする。
    unless @user.valid?
      
      @errer_messages = @user.errors.full_messages
      flash[:error] = @errer_messages 

      redirect_to request.env["HTTP_REFERER"]
      return
    end

    if @user.save
      flash[:success] = "登録が完了しました。" 
      return redirect_to request.env["HTTP_REFERER"] 
    else
      #エラー。
      return raise
    end


  
  end












end
