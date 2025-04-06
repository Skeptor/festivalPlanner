# frozen_string_literal: true

class AgendasController < ApplicationController
  def create
    new_agenda = GenerateAgendaService.new(festival, concerts).call

    redirect_to festival_agenda_url(id: new_agenda.id)
  end

  def show
    respond_to do |format|
      format.html do
        render locals: { agenda: }
      end
    end
  end

  private

  def concerts
    Concert.find(params[:concerts]).sort_by(&:start_time)
  end

  def agenda
    @agenda ||= Agenda.find(params[:id])
  end

  def festival
    @festival ||= Festival.find(params[:festival_id])
  end
end
