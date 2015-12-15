class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :prefs, :email
end
