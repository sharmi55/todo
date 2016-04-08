class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name,  :title, :body, :user_id

  def title
    object.title
  end

  def body
    object.body
  end

  def name
    object.name
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end

end
