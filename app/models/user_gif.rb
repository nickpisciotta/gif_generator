class UserGif < ActiveRecord::Base
  belongs_to :gif
  belongs_to :user 
end
