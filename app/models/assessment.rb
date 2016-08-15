class Assessment < ApplicationRecord
  belongs_to :user
  has_many :candidates
  accepts_nested_attributes_for :candidates

  def second(candidates)
    candidates.length <= 1 ? nil : candidates[1]
  end
end
