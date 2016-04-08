class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name, :permissions


  def name
    object.name
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

end
