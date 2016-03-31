class UnitsController < ApplicationController
  def index
    @units = Unit.all
  end

  def new
    @unit = Unit.new
  end
end
