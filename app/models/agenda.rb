class Agenda < ApplicationRecord
  belongs_to :festival
  has_many :agenda_concerts, dependent: :destroy
end
