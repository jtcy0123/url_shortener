class Url < ApplicationRecord
  before_create :shorten
  validates :long_url, :format => URI::regexp(%w(http https))

  def shorten
    randnum = SecureRandom.hex(3)
    self.short_url = "#{randnum}"
  end

end
