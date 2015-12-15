class List < ActiveRecord::Base
  belongs_to :user
  has_many :items

  def author
    config[:author]
  end

  def author=(name)
    config[:author] = name
  end
end
