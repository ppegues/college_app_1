class ListController < ApplicationController
  def rank

  end

  def region
  end

  def score
    @schools = School.all
  end
end
