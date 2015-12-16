class CurrentUserSerializer < ActiveModel::Serializer
  attributes :new_record?, :user, :id

  def user
    object
  end

  def id
    0
  end
end
