class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :body

  def body
    object.body
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
