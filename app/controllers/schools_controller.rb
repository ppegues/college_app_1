class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
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
    @school.ACT = params[:ACT]
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
