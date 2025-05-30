# frozen_string_literal: true

module AgendaHelper
  def festival_time(date)
    if date.hour < 15
      'Dia ' + (date - 1.day).strftime('%d') + ' ' + date.strftime('%H:%M')
    else
      'Dia ' + date.strftime('%d') + ' ' + date.strftime('%H:%M')
    end
  end
end
