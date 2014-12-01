class ListController < ApplicationController
  def rank
    @schools = School.all
    # @schools = School.order(:Rank_Forbes)
  end

  def region
    @schools = School.all
  end

  def northeast
    @northeast_schools = School.where({:region => "Northeast"})
  end

  def south
    @south_schools = School.where({:region => "South"})
  end

  def midwest
    @midwest_schools = School.where({:region => "Midwest"})
  end

  def west
    @west_schools = School.where({:region => "West"})
  end

  def score
    @schools = School.all
  end

  def aid
    @schools = School.all
  end

end
