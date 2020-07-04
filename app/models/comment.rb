class Comment < ApplicationRecord
  belongs_to :animal, optional: true
  belongs_to :plant, optional: true
end
