class CartsController < ApplicationController
    
  before_action :set_carts, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!
  
  add_breadcrumb "MASSDUMP", :root_path


  # GET /articles
  # GET /articles.json
  def index
      
     add_breadcrumb "shopping cart", carts_path 

    @carts = Cart.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    #@article = current_user.articles.build
  end

  # GET /articles/1/edit
  def edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carts
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carts_params
      params.require(:cart).permit(:name)
    end
    
end
