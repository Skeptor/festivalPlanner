class AgendaConcert < ApplicationRecord
  belongs_to :agenda
  belongs_to :concert
end
