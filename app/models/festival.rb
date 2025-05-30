class Festival < ApplicationRecord
  has_many :stages, dependent: :destroy

  def first_day
    stages.first.concerts.first.start_time
  end
end
