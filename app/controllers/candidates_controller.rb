class CandidatesController < ApplicationController

# TODO where to route to for create on save
  def new
    @assessment = Assessment.new(user_id: session[:user_id])
    @candidate = @assessment.candidates.build
    
    @id = params["assessment_id"]
    @candidate = Candidate.new 
    @edu_levels = EduLevel.all
    @languages = LanguageTest.limit(2)
    @language_tests = LanguageTest.all
    @language_score_tiers = LangScoreTier.all 
    @name_scores = LanguageTest.first.lang_score_tiers
    @reading_scores = LangScoreTier.all.where(skill: "reading")
    @writing_scores = LangScoreTier.all.where(skill: "writing")
    @speaking_scores = LangScoreTier.all.where(skill: "speaking")
    @listening_scores = LangScoreTier.all.where(skill: "listening")
    # @assessment = Assessment.find(@id)
    # @first_candidate = @assessment.candidates.first
    # @second_candidate = @assessment.candidates.second 
  end

  def create
    @candidate = Candidate.new(candidate_params)
    @assessment = Assessment.new(user_id: session[:user_id])
    @candidate.assessments_id = @id

    if @candidate.save
    end
  end

  def age(dob)
    today = Date.today
    age = d.year - dob.year - (d > today ? 1 : 0)
  end
   
  protected

  def candidate_params
    params.require(:candidate).permit(:assessment_id, 
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


