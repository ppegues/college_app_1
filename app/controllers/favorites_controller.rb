class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    @profile = Profile.all
    @school = School.all

   if "@favorites.profile.GPA > @favorites.school.avg_GP" #&& ("Profile.SAT > School.avg_SAT" || "Profile.ACT > School.avg_ACT")
     @difficulty = "Safe"
    else
      if "@favorites.profile.GPA < @favorites.school.avg_GPA" #&& ("Profile.SAT < School.avg_SAT" || "Profile.ACT < School.avg_ACT")
       @difficulty = "Stretch"
      #else
       # if (current_profile.GPA > School.avg_GPA && (current_profile.SAT >= School.lower_SAT && current_profile.SAT <= School.upper_SAT)
        #  @difficulty = "Target"
        #else
         # if (current_profile.GPA > School.avg_GPA && (current_profile.ACT >= School.lower_ACT && current_profile.ACT <= School.upper_ACT)
          #@difficulty = "Target"
        #else
         # if (current_profile.GPA < School.avg_GPA && (current_profile.SAT > School.avg_SAT || current_profile.ACT > School.avg_ACT)
          #@difficulty = "Target"
        end
      end
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new
    @profile = Profile.all
    @schools = School.all
  end

  def create
    @favorite = Favorite.new
    @favorite.profile_id = params[:profile_id]
    @favorite.school_id = params[:school_id]
    @favorite.acceptance_difficulty = params[:acceptance_difficulty]

    if @favorite.save
      redirect_to "/favorites", :notice => "Favorite created successfully."
    else
      render 'new'
    end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    @favorite = Favorite.find(params[:id])

    @favorite.profile_id = params[:user_id]
    @favorite.school_id = params[:school_id]
    @favorite.acceptance_difficulty = params[:acceptance_difficulty]

    if @favorite.save
      redirect_to "/favorites", :notice => "Favorite updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])

    @favorite.destroy

    redirect_to "/favorites", :notice => "Favorite deleted."
  end
end
