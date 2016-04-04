class Api::UsersController < ApiController

  before_action :authenticated?

  def index
    users = User.all
    render json: users, each_serializer: UserSerializer
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, each_serializer: UserSerializer
    else
      render json: { errors: user.errors.full_messages }, each_serializer: UserSerializer
    end
  end

private
  def user_params
    prams.require(:user).permit(:email, :password)
  end

end
