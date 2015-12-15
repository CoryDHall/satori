class List < ActiveRecord::Base
  include Findable

  belongs_to :user
  has_many :items,
    dependent: :destroy

  validates :title, presence: true

  attr_passthrough :title
end
