class Concert < ApplicationRecord
  belongs_to :stage
  belongs_to :group
  has_many :agenda_concerts, dependent: :destroy

  def start_hour
    start_time.strftime("%H:%M")
  end

  def end_hour
    end_time.strftime("%H:%M")
  end

  def festival_day
    if start_time.hour < 15
      # If the concert starts before 15:00, we consider it as part of the previous day
      fixed_start_time = start_time - 1.day
    else
      fixed_start_time = start_time
    end

    ((fixed_start_time - stage.festival.first_day + 1.day) / 1.day).to_i
  end
end
