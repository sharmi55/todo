class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :username, :password
  def username
    object.username
  end

  def password
    object.password
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
