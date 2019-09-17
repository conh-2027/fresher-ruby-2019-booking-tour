class Picture < ApplicationRecord
  belongs_to :picturetable, polymorphic: true
end
