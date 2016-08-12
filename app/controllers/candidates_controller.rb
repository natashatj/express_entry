class CandidatesController < ApplicationController
 
  def new
    @edu_levels = EduLevel.all
    @languages = LanguageTest.limit(2)
    @language_tests = LanguageTest.all
    @language_score_tiers = LangScoreTier.all 
    @reading_scores = LangScoreTier.all.where(skill: "reading")
    @writing_scores = LangScoreTier.all.where(skill: "writing")
    @speaking_scores = LangScoreTier.all.where(skill: "speaking")
    @listening_scores = LangScoreTier.all.where(skill: "listening")
    # @first_candidate = @assessment.candidates.first
    # @second_candidate = @assessment.candidates.second 
  end

  def create

    @id = params["assessment_id"]
    @assessment = Assessment.find(@id)
    @candidate = @assessment.candidates.new(candidate_params)
    # binding.pry
    if @candidate.save
      puts "Yay"
    else
      render :new
    end
  end
   
  protected

  def candidate_params
    params.require(:candidate).permit(:assessment_id, 
      :edu_level_id, 
      :country_id, 
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

  @candidate.points = 0
  #best way to write out methods
  #how we relate to candidate
  #how we store the points (variable or directly in db (breakdown is in assessment table))
  #how to get methods triggered once button is clicked
  #method that checks who out of the two candidates has higher points, makes that one primary
  #check if its second person submitting form, compare then and then update table
  #if want to share method, put it in application controller

  def self.age
      #get key for particular value (can put in csv and read from it)
      #hash instead of if and else, go through value of the hash
      #do update route
      points_for age = {
        34: 75,

      }

  end


end


