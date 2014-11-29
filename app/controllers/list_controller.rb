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
    @south_schools = School.where({:region => params["south"]})
  end

  def midwest
  end

  def west
  end

  def score
    @schools = School.all
  end

end
