class Landmark < ActiveRecord::Base
  # add relationships here
  belongs_to :figure
end

# has_many
# has_many through
# belongs_to