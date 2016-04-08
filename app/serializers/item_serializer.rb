class ItemSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :description

  def description
    object.description
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
