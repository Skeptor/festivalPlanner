class Concert < ApplicationRecord
  belongs_to :stage
  belongs_to :group
  has_many :agenda_concerts, dependent: :destroy

  def start_hour
    start_time.strftime("%e/%m %H:%M")
  end

  def end_hour
    end_time.strftime("%e/%m %H:%M")
  end
end
