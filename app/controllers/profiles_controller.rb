class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new
    @profile.username = params[:username]
    @profile.image = params[:image]
    @profile.high_school = params[:high_school]
    @profile.GPA = params[:GPA]
    @profile.SAT = params[:SAT]
    @profile.ACT = params[:ACT]
    @profile.extras = params[:extras]
    @profile.size = params[:size]
    @profile.region_id = params[:region_id]
    @profile.rank = params[:rank]

    if @profile.save
      redirect_to "/profiles", :notice => "Profile created successfully."
    else
      render 'new'
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])

    @profile.username = params[:username]
    @profile.image = params[:image]
    @profile.high_school = params[:high_school]
    @profile.GPA = params[:GPA]
    @profile.SAT = params[:SAT]
    @profile.ACT = params[:ACT]
    @profile.extras = params[:extras]
    @profile.size = params[:size]
    @profile.region_id = params[:region_id]
    @profile.rank = params[:rank]

    if @profile.save
      redirect_to "/profiles", :notice => "Profile updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @profile = Profile.find(params[:id])

    @profile.destroy

    redirect_to "/profiles", :notice => "Profile deleted."
  end
end
