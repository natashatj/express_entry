class CandidatesController < ApplicationController
 def new
  @candidate = Candidate.new
end

def create
  @candidate = Candidate.new(candidate_params)

  if @candidate.save
    redirect_to new_candidate_path
  else
    render :new
  end
end

protected

def candidate_params
  params.require(:candidate).permit(:assessments_id, 
    :edu_levels_id, 
    :countries_id, 
    :first_name, 
    :middle_name, 
    :last_name, 
    :dob, 
    :occupation, 
    :funds,
    :bac_is_pro?, 
    :kids, 
    :frg_work_xp_none, 
    :frg_work_xp_one_or_two, 
    :frg_work_xp_three_or_more, 
    :cdn_xp_visited, 
    :cdn_xp_fr_en_studies, 
    :cdn_xp_ps_greater_than_one, 
    :cdn_xp_work_greater_than_one, 
    :cdn_xp_work_permit_paid, 
    :cdn_xp_study_perm_dli, 
    :cdn_xp_none, 
    :cdn_xp_one_yr, 
    :cdn_xp_one_or_more) 
end
end


