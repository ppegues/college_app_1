class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
    @favorite = Favorite.find_by(:school_id => @school.id, :profile_id => current_profile.id)
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new
    @school.name = params[:name]
    @school.description = params[:description]
    @school.image = params[:image]
    @school.region = params[:region]
    @school.size = params[:size]
    @school.tuition = params[:tuition]
    @school.acceptance_rate = params[:acceptance_rate]
    @school.SAT = params[:SAT]
    @school.ACT = params[:ACT]
    @school.GPA = params[:GPA]
    @school.rank_forbes = params[:rank_forbes]
    @school.Percent_with_Financial_Aid = params[:Percent_with_Financial_Aid]

    if @school.save
      redirect_to "/schools", :notice => "School created successfully."
    else
      render 'new'
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])

    @school.name = params[:name]
    @school.description = params[:description]
    @school.image = params[:image]
    @school.region = params[:region]
    @school.size = params[:size]
    @school.tuition = params[:tuition]
    @school.acceptance_rate = params[:acceptance_rate]
    @school.SAT = params[:SAT]
    @school.avg_SAT = params[:avg_SAT]
    @school.lower_SAT = params[:lower_SAT]
    @school.upper_SAT = params[:upper_SAT]
    @school.avg_ACT = params[:avg_ACT]
    @school.lower_ACT = params[:lower_ACT]
    @school.upper_ACT = params[:upper_ACT]
    @school.ACT = params[:ACT]
    @school.avg_GPA = params[:avg_GPA]
    @school.GPA = params[:GPA]
    @school.rank_forbes = params[:rank_forbes]
    @school.Percent_with_Financial_Aid = params[:Percent_with_Financial_Aid]

    if @school.save
      redirect_to "/schools", :notice => "School updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @school = School.find(params[:id])

    @school.destroy

    redirect_to "/schools", :notice => "School deleted."
  end
end
