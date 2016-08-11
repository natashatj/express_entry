class EduLevel < ApplicationRecord
	belongs_to :candidate
<<<<<<< HEAD
  def self.create_edu_levels
    EduLevel.create name_of_edu_level: "High School", tier_w_prof: "false", tier_no_prof: "true", number_creds: "none"
    EduLevel.create name_of_edu_level: "One Year Post Secondary", tier_w_prof: "false", tier_no_prof: "true", number_creds: "none"
    EduLevel.create name_of_edu_level: "Two Year Post Secondary", tier_w_prof: "false", tier_no_prof: "true", number_creds: "none"
    EduLevel.create name_of_edu_level: "Bachelor's", tier_w_prof: "false", tier_no_prof: "true", number_creds: "one"
    EduLevel.create name_of_edu_level: "Bachelor's and Post Grad", tier_w_prof: "true", tier_no_prof: "false", number_creds: "two"
    EduLevel.create name_of_edu_level: "Master's or Prof Bach", tier_w_prof: "true", tier_no_prof: "false", number_creds: "two"
    EduLevel.create name_of_edu_level: "PhD", tier_w_prof: "true", tier_no_prof: "false", number_creds: "two"
  end
=======
>>>>>>> 4ec666db77af7d59593d2320de5eec35f842e9ea
end
