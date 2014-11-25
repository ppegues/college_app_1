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
    @school.location = params[:location]
    @school.region_id = params[:region_id]
    @school.region_name = params[:region_name]
    @school.size = params[:size]
    @school.tuition = params[:tuition]
    @school.SAT = params[:SAT]
    @school.ACT = params[:ACT]
    @school.GPA = params[:GPA]
    @school.rank = params[:rank]

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
    @school.location = params[:location]
    @school.region_id = params[:region_id]
    @school.region_name = params[:region_name]
    @school.size = params[:size]
    @school.tuition = params[:tuition]
    @school.SAT = params[:SAT]
    @school.ACT = params[:ACT]
    @school.GPA = params[:GPA]
    @school.rank = params[:rank]

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
