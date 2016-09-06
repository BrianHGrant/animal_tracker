class Sighting < ActiveRecord::Base
  belongs_to :region
  belongs_to :animal

  scope :which_region, -> (region_id) {where region_id: region_id}
end
