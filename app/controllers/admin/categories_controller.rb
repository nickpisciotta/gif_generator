require "net/http"
require "uri"

class Admin::CategoriesController < Admin::BaseController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    category_name = params[:category][:name]
    gif_url = find_gif(category_name)

    gif = Gif.create(image_path: gif_url)
    category = Category.find_or_create_by(name: category_name)
    category.gifs << gif
    redirect_to gifs_path

    # if @category.save
    #   flash[:success] = "Category Successfully Created!"
    #   redirect_to admin_category_path(@category)
    # else
    #   render :new
    # end
  end

  def find_gif(category_name)
    api_key = "dc6zaTOxFJmzC"
    category_name = category_name.split(" ").join("+")
    url = "http://api.giphy.com/v1/gifs/search?q=#{category_name}&api_key=#{api_key}"
    resp = Net::HTTP.get_response(URI.parse(url))
    buffer = resp.body
    result = JSON.parse(buffer)
    result["data"][0]["images"]["original"]["url"]
  end


  def destroy
    category = Category.find(params[:id])
    category.destroy
    redirect_to admin_categories_path
  end

  # def update
  #   @category = Category.find(params[:id])
  #   if @category.update(category_params)
  #     redirect_to admin_category_path(@category)
  #   else
  #     render :edit
  #   end
  # end


  private
  def category_params
    params.require(:category).permit(:name)
  end

end
