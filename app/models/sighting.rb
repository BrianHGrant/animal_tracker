class Sighting < ActiveRecord::Base
  belongs_to :region
  belongs_to :animal
end
