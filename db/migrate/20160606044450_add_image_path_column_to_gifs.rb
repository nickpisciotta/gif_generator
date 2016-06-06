class AddImagePathColumnToGifs < ActiveRecord::Migration
  def change
    add_column :gifs, :image_path, :string 
  end
end
