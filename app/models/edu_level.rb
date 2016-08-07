class EduLevel < ApplicationRecord
  def self.create_edu_levels
    EduLevel.create name_of_edu_level: "High School", tier_w_prof: "false", tier_no_prof: "true", number_creds: "none"
    EduLevel.create name_of_edu_level: "One Year PS", tier_w_prof: "false", tier_no_prof: "true", number_creds: "none"
    EduLevel.create name_of_edu_level: "Two Year PS", tier_w_prof: "", tier_no_prof: "", number_creds: "none"
    EduLevel.create name_of_edu_level: "Bachelor's", tier_w_prof: "", tier_no_prof: "", number_creds: ""
    EduLevel.create name_of_edu_level: "Bachelor's + PG", tier_w_prof: "", tier_no_prof: "", number_creds: ""
    EduLevel.create name_of_edu_level: "Master's or Prof Bach", tier_w_prof: "", tier_no_prof: "", number_creds: ""
    EduLevel.create name_of_edu_level: "PhD", tier_w_prof: "", tier_no_prof: "", number_creds: ""
  end
end
