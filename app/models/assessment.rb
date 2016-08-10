class Assessment < ApplicationRecord
  belongs_to :user
  has_many :candidates

  def second(candidates)
    candidates.length <= 1 ? nil : candidates[1]
  end
end
