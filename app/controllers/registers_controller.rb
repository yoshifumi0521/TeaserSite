#coding: utf-8
class RegistersController < ApplicationController



  #パターン1のアクション  
  def pattern1

    @pattern = 1
    @user = User.new(:pattern_id => @pattern)

    #index.htmlをレンダリング
    render "index"

  end


  #パターン2のアクション
  def pattern2

    @pattern = 2
    @user = User.new(:pattern_id => @pattern)

    #index.htmlをレンダリング
    render "index"

  end


  #パターン3のアクション
  def pattern3

    @pattern = 3
    @user = User.new(:pattern_id => @pattern)

    #index.htmlをレンダリング
    render "index"

  end


  #パターン4のアクション
  def pattern4

    @pattern = 4
    @user = User.new(:pattern_id => @pattern)

    #index.htmlをレンダリング
    render "index"

  end


  #パターン5のアクション
  def pattern5

    @pattern = 5
    @user = User.new(:pattern_id => @pattern)

    #index.htmlをレンダリング
    render "index"

  end






end
