class Festival < ApplicationRecord
  has_many :stages, dependent: :destroy
end
