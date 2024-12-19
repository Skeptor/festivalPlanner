class Group < ApplicationRecord
  has_many :concerts, dependent: :destroy
end
