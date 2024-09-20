# frozen_string_literal: true

class GroupsController < ApplicationController
  def index
    respond_to do |format|
      format.html do
        render locals: { groups: }
      end
    end
  end

  def groups
    Group.all
  end
end
