# frozen_string_literal: true

class GenerateAgendaService
  def initialize(festival, concerts)
    @festival = festival
    @concerts = concerts
    @agenda = Agenda.find_or_create_by(festival:)
  end

  def call
    remove_overlapping
    agenda
  end

  attr_reader :festival, :concerts, :agenda

  private

  def remove_overlapping
    discarded_concerts = []
    concerts.each do |concert|
      discarded_concerts += calculate_overlapped_concerts(concert)
      concerts.reject! { |concert| discarded_concerts.map(&:id).include?(concert.id) }
    end

    agenda.agenda_concerts.destroy_all

    concerts.each do |concert|
      AgendaConcert.create!(agenda:, concert:)
    end

    discarded_concerts.each do |concert|
      AgendaConcert.create!(agenda:, concert:, discarded: true)
    end
  end

  def calculate_overlapped_concerts(concert)
    concerts.select do |agenda_concert|
      (concert.start_time == agenda_concert.start_time ||
       concert.start_time < agenda_concert.end_time &&
       concert.end_time > agenda_concert.start_time) &&
       concert != agenda_concert
    end
  end
end
