class List < ActiveRecord::Base
  include Findable

  belongs_to :user
  has_many :items

  validates :title, presence: true

  attr_passthrough :title
end
