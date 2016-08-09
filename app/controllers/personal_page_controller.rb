class PersonalPageController < ApplicationController
  
  def home
    
  end

  def submit
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      redirect_to new_candidate_path
    else
      redirect_to personal_page_home_path
    end
  end

  protected

  def candidate_params
    params.require(:candidate).permit(:first_name, :middle_name, :last_name, :dob, :spouse, :occupation, :funds, :kids)
  end
end
