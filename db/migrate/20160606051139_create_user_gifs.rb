class CreateUserGifs < ActiveRecord::Migration
  def change
    create_table :user_gifs do |t|
  
      t.timestamps null: false
    end
  end
end
