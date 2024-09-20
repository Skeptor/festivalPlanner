# frozen_string_literal: true

class FestivalsController < ApplicationController
  def index
    respond_to do |format|
      format.html do
        render locals: { festivals: }
      end
    end
  end

  def show
    respond_to do |format|
      format.html do
        render locals: { festival: }
      end
    end
  end

  def festivals
    Festival.all
  end

  def festival
    @festivals ||= Festival.find(params[:id])
  end

  def agenda(groups)
    agenda_concerts = agenda_with_overlapping(groups)
    remove_overlapping(agenda_concerts)
  end

  def agenda_with_overlapping(groups)
    festival.stages.each do |stage|
      agenda_concerts += stage.concerts.select do |concert|
        groups.include(concert.group)
      end
    end

    agenda_concerts
  end

  def remove_overlapping(agenda_concerts)
    agenda_concerts if no_overlapping(agenda_concerts)
  end

  def no_overlapping(agenda_concerts)
    agenda_concerts.each do |concert|
      if agenda_concerts.where("start_hour < ? ", concert.end_hour)
                        .where("end_hour > ? ", concert.start_hour).count > 1
                          then return false end
    end

    true
  end
end
