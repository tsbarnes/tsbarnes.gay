class SexualityLabel < ApplicationRecord
  def flag_url
    "/flags/sexuality/#{name}.png"
  end
end
