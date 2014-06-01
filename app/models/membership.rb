class Membership < ActiveRecord::Base
  validates :team_id, presence: true
  validates :student_id, presence: true

  belongs_to :student
  belongs_to :team
end
