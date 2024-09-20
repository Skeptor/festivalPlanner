class Concert < ApplicationRecord
  belongs_to :stage
  belongs_to :group

  def start_hour
    start_time.strftime("%H:%M")
  end

  def end_hour
    self.stage.concerts.where(start_time > self.start_time).first
  end
end
