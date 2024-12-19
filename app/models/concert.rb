class Concert < ApplicationRecord
  belongs_to :stage
  belongs_to :group
  has_many :agenda_concerts, dependent: :destroy

  def start_hour
    start_time.strftime("%H:%M")
  end

  def end_time
    if self.stage.concerts.last == self
      return start_time + 1.hour
    end
    self.stage.concerts.where(start_time > self.start_time).first.start_time
  end

  def end_hour
    end_time.strftime("%H:%M")
  end
end
