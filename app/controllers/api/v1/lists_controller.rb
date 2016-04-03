class Api::ListsController < ApiController
  before_action :authenticated?

  def index
    @lists = List.all

    render json: lists, each_serializer: InsecureUserSerializer
  end

  def new
    @list = List.new
  end

  def create
  end

end
