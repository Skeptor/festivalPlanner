# frozen_string_literal: true

class StagesController < ApplicationController
  def index
    respond_to do |format|
      format.html do
        render locals: { stages: }
      end
    end
  end

  def stages
    Stage.all
  end
end
