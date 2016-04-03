class Api::ItemsController < ApiController
  before_action :authenticated?


  def index
    items = Item.all
    render json: items, each_serializer: InsecureUserSerializer
  end

  def new
    item = Item.new
  end


  def create
  end


end
