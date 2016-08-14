class Candidate < ApplicationRecord

  belongs_to :assessment, required: false
  has_and_belongs_to_many :lang_test_datum
  belongs_to :edu_level

  # validates :assessments_id#, presence: true
  # validates :edu_levels_id#, presence: true
  # validates :countries_id#, presence: true
  # validates :first_name#, presence: true, length: { minimum: 2, maximum: 225 }
  # validates :middle_name#, presence: true, length: { minimum: 2, maximum: 225 }
  # validates :last_name#, presence: true, length: { minimum: 2, maximum: 225 }
  # validates :dob#, presence: true
  # validates :occupation#, presence: true, length: { minimum: 2, maximum: 225 }
  # validates :funds#, numericality: { only_integer: true }, allow_blank: true
  # validates :bac_is_pro?#, inclusion: { in: [ true, false ] }
  # validates :kids#, presence: true
  # validates :frg_work_xp_none#, inclusion: { in: [ true, false ] }
  # validates :frg_work_xp_one_or_two#, inclusion: { in: [ true, false ] }
  # validates :frg_work_xp_three_or_more#, inclusion: { in: [ true, false ] }
  # validates :cdn_xp_visited#, inclusion: { in: [ true, false ] }
  # validates :cdn_xp_fr_en_studies#, inclusion: { in: [ true, false ] }
  # validates :cdn_xp_ps_greater_than_one#, inclusion: { in: [ true, false ] }
  # validates :cdn_xp_work_greater_than_one#, inclusion: { in: [ true, false ] }
  # validates :cdn_xp_work_permit_paid#, inclusion: { in: [ true, false ] }
  # validates :cdn_xp_study_perm_dli#, inclusion: { in: [ true, false ] }
  # validates :cdn_xp_none#, inclusion: { in: [ true, false ] }
  # validates :cdn_xp_one_yr#, inclusion: { in: [ true, false ] }
  # validates :cdn_xp_one_or_more#, inclusion: { in: [ true, false ] }
  
  # validate :invalid_dob

  # protected

  # def invalid_dob
  #   if dob.present?
  #     errors.add(:dob, "Invalid date of birth") if (dob > Date.today)
  #     # errors.add(:dob, "You must be at least 18 years of age in order to qualify for Blake Sieders And Associates services") if dob < (Date.today - 18.years.ago)
  #   end
  # end
end