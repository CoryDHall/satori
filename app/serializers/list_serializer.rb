class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :config
end
