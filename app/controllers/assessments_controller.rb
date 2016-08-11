class AssessmentsController < ApplicationController

#TODO where to route new on save and create on save
  def new
  	@assessment = Assessment.new(user_id: session[:user_id])
    @candidate = @assessment.candidates.build
    # @candidate.is_primary = true
    # @candidate_secondary = @

 
    if @assessment.save
      puts @assessment.id
    		redirect_to new_assessment_candidate_path(assessment_id: @assessment.id)

    	else
  		render :new
  	end
	end

  def create
    @assessment = Assessment.new
    if @assessment.save
      redirect_to new_assessment_candidate_path(assessment_id: @assessment.id)
      puts "Success!"
    else
      render :new
    end
  end

  protected

  def assessment_params
    params.require(:assessment).permit(:user_id, 
                                      :points, 
                                      :primary_age, 
                                      :primary_edu, 
                                      :primary_first_lang, 
                                      :primary_second_lang, 
                                      :primary_cdn_work, 
                                      :secondary_edu, 
                                      :secondary_first_lang, 
                                      :secondary_cdn_work, 
                                      :adapt_ed_lang, 
                                      :adapt_ed_cdn_xp, 
                                      :adapt_frg_xp_lang, 
                                      :adapt_trade_cert_lang)
  end

end
