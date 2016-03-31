class Api::ListsController < ApiController

  def index
    @lists = List.all

    render json: lists, each_serializer: InsecureUserSerializer
  end

  def new
    @list = List.new
  end

end
