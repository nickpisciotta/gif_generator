class GifsController < ApplicationController


  def index
    @gifs= Gif.paginate(:page => params[:page], :per_page => 2)
  end

end
