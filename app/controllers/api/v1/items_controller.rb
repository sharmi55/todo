class Api::ItemsController < ApiController

  def index
    @items = Item.all
    render json: items, each_serializer: InsecureUserSerializer
  end

  def new
    @item = Item.new
  end

end
