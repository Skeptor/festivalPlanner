# frozen_string_literal: true

class ConcertsController < ApplicationController
  def index
    respond_to do |format|
      format.html do
        render locals: { concerts: }
      end
    end
  end

  def create
    Concert.create!(concert_params)

    respond_to do |format|
      format.turbo_stream do
        render locals: { concert: Concert.last }
      end
    end
  end

  private

  def concerts
    Concert.all
  end

  def concert_params
    params.require(:concert).permit(:name, :date, :time, :group_id, :stage_id)
  end
end
