class Hero < ApplicationRecord
  belongs_to :planet, optional: true
end
