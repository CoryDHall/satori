class Item < ActiveRecord::Base
  include Findable

  belongs_to :author,
    class_name: "User",
    foreign_key: :user_id

  belongs_to :list,
    dependent: :destroy

  validates :title, :author, presence: true

  attr_passthrough :title
end
