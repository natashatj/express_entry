class PersonalPageController < ApplicationController
  def home
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  protected

  def candidate_params
    params.require(:candidate).permit(:first_name, :middle_name, :last_name, :dob, :spouse)
  end
end
