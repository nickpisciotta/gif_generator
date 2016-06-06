class AddUserRefToUserGifs < ActiveRecord::Migration
  def change
    add_reference :user_gifs, :user, index: true, foreign_key: true 
  end
end
