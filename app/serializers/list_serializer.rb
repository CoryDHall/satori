class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :items
end
