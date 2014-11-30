class ListController < ApplicationController
  def rank
    @schools = School.all
    # @schools = School.order(:Rank_Forbes)
  end

  def region
    @schools = School.all
  end

  def northeast
  end

  def south
    @south_schools = School.where({:region => "South"})
  end

  def midwest
  end

  def west
  end

  def score
    @schools = School.all
  end

  def aid
    @schools = School.all
  end

end
