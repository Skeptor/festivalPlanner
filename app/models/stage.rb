class Stage < ApplicationRecord
  belongs_to :festival
  has_many :concerts, dependent: :destroy
end
