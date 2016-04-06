class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :username, :email, :password_digest

  def username
    object.username
  end

  def email
    object.email
  end

  def password_digest
    object.password_digest
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
