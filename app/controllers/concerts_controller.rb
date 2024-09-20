# frozen_string_literal: true

class ConcertsController < ApplicationController
  def index
    respond_to do |format|
      format.html do
        render locals: { concerts: }
      end
    end
  end

  def concerts
    Concert.all
  end
end
