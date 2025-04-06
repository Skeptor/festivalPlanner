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
    @festival ||= Festival.find(params[:id])
  end
end
