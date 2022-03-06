class GenderLabel < ApplicationRecord
  def flag_url
    "/flags/gender/#{name}.png"
  end
end
