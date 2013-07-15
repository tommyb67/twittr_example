class User < ActiveRecord::Base
  has_many :tweets
  has_many :favorites

  attr_acessible :name, :screenname, :description, :email, :location, :password
  end