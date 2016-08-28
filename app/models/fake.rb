class Fake < ApplicationRecord

  validates :option_fill,presence: true
  validates :about,presence: true

  def url_request
    fakes(self)
  end

end
