class ListController < ApplicationController
  def rank
    @schools = School.all

  end

  def region
    @schools = School.all
  end

  def northeast
  end

  def south
    @region - School.find(:region)
    @south_schools = School.where({:region => @south})
  end

  def midwest
  end

  def west
  end

  def score
    @schools = School.all
  end

end
