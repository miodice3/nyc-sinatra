class FigureTitle < ActiveRecord::Base
  # add relationships here
  belongs_to :figure
  belongs_to :title
end
# has_many
# has_many through
# belongs_to