class Beer < ActiveRecord::Base
  belongs_to :brewery

  validates :name, presence: true

  def average_rating
    4
  end
end
