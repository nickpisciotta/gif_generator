class AddGifRefToUserGifs < ActiveRecord::Migration
  def change
    add_reference :user_gifs, :gif, index: true, foreign_key: true 
  end
end
