class AssessmentsController < ApplicationController
  def new
    @assessment = Assessment.new
  end

  def create
    @assessment = Assessment.new(assessment_params)
    if @assessment.save
      redirect_to immigration_home_path
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
