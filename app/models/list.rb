class List < ActiveRecord::Base
  include Findable

  belongs_to :user
  has_many :items,
    dependent: :destroy

  validates :title, presence: true

  attr_passthrough :title, :creator

  before_save :ensure_creator

  def ensure_creator
    self.creator = user.username
  end

end
