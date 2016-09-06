class Sighting < ActiveRecord::Base
  belongs_to :region
  belongs_to :animal

  scope :which_region, -> (region_id) {where region_id: region_id}
  scope :between, -> (max, min) {where created_at: max..min} 
end
