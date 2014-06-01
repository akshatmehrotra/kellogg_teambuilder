class Team < ActiveRecord::Base

  belongs_to :course
  has_many :students

  validates :name, presence: true
  validates :course_id, presence: true
end
