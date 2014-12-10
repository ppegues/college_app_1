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
    @profile.email = params[:email]
    @profile.image = params[:image]
    @profile.high_school = params[:high_school]
    @profile.GPA = params[:GPA]
    @profile.SAT = params[:SAT]
    @profile.ACT = params[:ACT]
    @profile.Extras = params[:Extras]
    @profile.school_size = params[:school_size]
    @profile.region = params[:region]
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
    @profile.email = params[:email]
    @profile.image = params[:image]
    @profile.high_school = params[:high_school]
    @profile.GPA = params[:GPA]
    @profile.SAT = params[:SAT]
    @profile.ACT = params[:ACT]
    @profile.Extras = params[:Extras]
    @profile.school_size = params[:school_size]
    @profile.region = params[:region]
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
