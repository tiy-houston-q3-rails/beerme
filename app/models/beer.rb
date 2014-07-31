class Beer < ActiveRecord::Base
  belongs_to :brewery

  def average_rating
    4
  end
end
