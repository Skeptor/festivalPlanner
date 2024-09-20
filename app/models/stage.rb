class Stage < ApplicationRecord
  belongs_to :festival
  has_many :concerts
end
