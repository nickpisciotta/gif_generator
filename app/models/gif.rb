class Gif < ActiveRecord::Base
  belongs_to :category
  has_many :user_gifs
  has_many :users, through: :user_gifs 
end
