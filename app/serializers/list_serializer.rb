class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :creator

  class Api::ItemSerializer < ActiveModel::Serializer
    attributes :id, :title
  end

  has_many :items
end
