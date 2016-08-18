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
  end

  def create

    @id = params["assessment_id"]
    @assessment = Assessment.find(@id)

    #Candidates to create
    @candidate = @assessment.candidates.new(candidate_params)


    if @candidate.save
  
      @candidate_age = calculate_age(@candidate.dob)
      @candidate_age_points = calculate_points_for_age(@candidate_age)
      @candidate_edu_points = calculate_points_for_edu(@candidate.edu_level_id)


      @candidate_cdn_work_points = cdn_work(@candidate.cdn_xp_years)
      @candidate_adapt_cdn_work_ed = adaptability_ed_cdn_xp
      @candidate_adapt_cdn_work_frg_work =adaptability_frg_xp_and_cdn_xp
      #add adapt methods that include lang
      #spouse first lang method 
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
      :is_married,
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
      :cdn_xp_years
      ) 
  end

  def calculate_age(dob)
    a = dob
    b = Date.today

    age = b.year - a.year
  end

  def calculate_points_for_age(age)
  @age_points_married = {
        20 => 100,
        21 => 100,
        22 => 100,
        23 => 100,
        24 => 100,
        25 => 100,
        26 => 100,
        27 => 100,
        28 => 100,
        29 => 100,
        19 => 95,
        30 => 95,
        18 => 90,
        31 => 90,
        32 => 85,
        33 => 80,
        34 => 75,
        35 => 70,
        36 => 65,
        37 => 60,
        38 => 55,
        39 => 50,
        40 => 45,
        41 => 35,
        42 => 25,
        43 => 15,
        44 => 5
      }
       @age_points_single = {
        20 => 110,
        21 => 110,
        22 => 110,
        23 => 110,
        24 => 110,
        25 => 110,
        26 => 110,
        27 => 110,
        28 => 110,
        29 => 110,
        19 => 105,
        30 => 105,
        18 => 99,
        31 => 99,
        32 => 94,
        33 => 88,
        34 => 83,
        35 => 77,
        36 => 72,
        37 => 66,
        38 => 61,
        39 => 55,
        40 => 50,
        41 => 39,
        42 => 28,
        43 => 17,
        44 => 6
       }

      if @candidate.is_married
        married_age_points =  @age_points_married.fetch(age)
        @candidate.points += married_age_points
      elsif !@candidate.is_married
        single_age_points = @age_points_single.fetch(age)
        @candidate.points += single_age_points
      end
    end


  def calculate_points_for_edu(edu_level)

    @edu_points_married = {
      1 => 28,
      2 => 84,
      3 => 91,
      4 => 112,
      5 => 119,
      6 => 126,
      7 => 140

    }

    @edu_points_single = {
      1 => 30,
      2 => 90,
      3 => 98,
      4 => 120,
      5 => 128,
      6 => 135,
      7 => 150
    }


    if @candidate.is_married
      married_edu_points = @edu_points_married.fetch(edu_level)
      @candidate.points += married_edu_points
    elsif !@candidate.is_married
      single_edu_points = @edu_points_single.fetch(edu_level)
      @candidate.points += single_edu_points
    end
  end


  def cdn_work(cdn_work_xp)
    @cdn_work_married = {

      1 => 35,
      2 => 46,
      3 => 56,
      4 => 63,
      5 => 70
    }

     @cdn_work_single = {

      1 => 40,
      2 => 53,
      3 => 64,
      4 => 72,
      5 => 80
    }
    if @candidate.is_married
      married_cdn_work_points = @cdn_work_married.fetch(cdn_work_xp)
      @candidate.points += married_cdn_work_points
    elsif !@candidate.is_married
      single_cdn_work_points = @cdn_work_single.fetch(cdn_work_xp)
      @candidate.points += single_cdn_work_points
    end
  end

  def adaptability_ed_cdn_xp
  
    if @candidate.edu_level_id == 4 && @candidate.cdn_xp_years == 1
      @candidate.points += 13
    elsif (@candidate.edu_level_id == 5 || @candidate.edu_level_id == 6 || @candidate.edu_level_id == 7) && @candidate.cdn_xp_years >= 2
      @candidate.points += 25
    elsif (@candidate.edu_level_id == 5 || @candidate.edu_level_id == 6 || @candidate.edu_level_id == 7) && @candidate.cdn_xp_years >= 2
      @candidate.points += 25
    else 
      return false
    end
  end

    def adaptability_frg_xp_and_cdn_xp
      if @candidate.frg_work_xp_one_or_two == true && @candidate.cdn_xp_years == 1
        @candidate.points += 13
      elsif @candidate.frg_work_xp_one_or_two == true && @candidate.cdn_xp_years >= 2
        @candidate.points += 25
      elsif @candidate.frg_work_xp_three_or_more == true && @candidate.cdn_xp_years == 1
        @candidate.points += 25
      elsif @candidate.frg_work_xp_three_or_more == true && @candidate.cdn_xp_years >= 2
        @candidate.points += 50
      end
    end

    def adaptability_ed_lang
      if @candidate_2.edu_level_id == 4 && @candidate_2.cdn_xp_years == 1
      @candidate_2.points += 13
    elsif (@candidate_2.edu_level_id == 5 || @candidate_2.edu_level_id == 6 || @candidate_2.edu_level_id == 7) && @candidate_2.cdn_xp_years >= 2
      @candidate_2.points += 25
    elsif (@candidate_2.edu_level_id == 5 || @candidate_2.edu_level_id == 6 || @candidate_2.edu_level_id == 7) && @candidate_2.cdn_xp_years >= 2
      @candidate_2.points += 25
    else 
      return false
    end

      if @candidate.edu_level_id.numbercred == 1 && (candidate.lang_test_data.clb == 7 || candidate.lang_test_data.clb == 8)
        candidate.points += 13
      elsif candidate.edu_level.cred == 1 && (candidate.lang_test_data.clb >= 9)
        candidate.points += 25
      elsif candidate.edu_level.cred == 2 && (candidate.lang_test_data.clb == 7 || candidate.lang_test_data.clb == 8)
        candidate.points += 25
      elsif candidate.edu_level.cred == 2 && (candidate.lang_test_data.clb >= 9)
        candidate.points += 50 
      end 
    end
    
    

    # def adaptability_frg_xp_and_lang
    #   if (candidate.frg_xp == 1 || candidate.frg_xp == 2) && (candidate.lang_test_data == 7 || candidate.lang_test_data == 8)
    #     candidate.points += 13
    #   elsif (candidate.frg_xp == 1 || candidate.frg_xp == 2) && (candidate.lang_test_data >= 9)
    #     candidate.points += 25
    #   elsif (candidate.frg_xp >= 3) && (candidate.lang_test_data == 7 || candidate.lang_test_data == 8)
    #     candidate.points += 25
    #   elsif (candidate.frg_xp >= 3) && (candidate.lang_test_data >= 9)
    #     candidate.points += 50
    #   end
    # end

    #method that checks who out of the two candidates has higher points, makes that one primary
  #check if its second person submitting form, compare then and then update table
  #if want to share method, put it in application controller
  #once candidates have total points compiled and candidate with highest points has been determined decrease other candidate's points based on the alocated spouse points.
  #do update route
    


    # def first_language_points

    #   first_language_points_married = {
    #     4: 6,
    #     5: 6,
    #     6: 8,
    #     7: 16,
    #     8: 22,
    #     9: 29,
    #     10: 32
    #   }

    #    first_language_points_single = {
    #     4: 6,
    #     5: 6,
    #     6: 9,
    #     7: 17,
    #     8: 23,
    #     9: 31,
    #     10: 34
    #   }  
    # end

    # def second_language_points

    #   second_language_points_married_and_single = {
    #     5: 1,
    #     6: 1,
    #     7: 3,
    #     8: 3,
    #     9: 6,
    #     10: 6
    #   }

    # end

    # def eligibility
    #   if @candidate.points >= 450
    #     p "Eligible"
    #     #in erb compare points to show eligiblity
    #   elsif @candidate.points < 450
    #     p "iNeligble"
    #   end
    # end

end
