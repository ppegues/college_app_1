class PreferenceController < ApplicationController

  def filter
    @profile = Profile.find(params[:id])

    @Error = "Error"

    #Region filter

    if @profile.region.present?
      @region_schools = School.where(:region => @profile.region)
    else
      @region_schools = School.all
    end

    #Size Filter

    if @profile.school_size == "Small (less than 5,000)"
      @region_size_schools = @region_schools.where("size < 5000")
    else
      if @profile.school_size == "Medium (5,000 to 10,000)"
       @region_size_schools = @region_schools.where("size > 5000 AND size < 10000")
     else
      if @profile.school_size == "Large (10,000+)"
        @region_size_schools = @region_schools.where("size > 10000")
      else
        @region_size_schools = @region_schools
      end
    end
  end

    #Rank Filter
    if @profile.rank == "Top 20"
      @region_size_rank_schools = @region_size_schools.where("rank_forbes <= 20")
    else

     if @profile.rank == "Top 50"
      @region_size_rank_schools = @region_size_schools.where("rank_forbes <= 50")
     else

      if @profile.rank == "Top 100"
        @region_size_rank_schools = @region_size_schools.where("rank_forbes <= 100")
      else

        @region_size_rank_schools = @region_size_schools
      end
    end
  end
end
end
