class Api::UsersController < ApiController

  before_action :authenticated?

  def index
    users = User.all
    render json: users, each_serializer: UserSerializer
  end

#  def show
#    user = User.find(params[:id])
#    render json: user.to_json
#  end
end

#  def update
#  end

#  def create
#  end
