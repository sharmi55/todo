class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name, :email, :password_digest

  def name
    object.name
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
