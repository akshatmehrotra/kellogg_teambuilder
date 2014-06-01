class Course < ActiveRecord::Base
  validates :name, presence: true
  validates :team_size, presence: true

  belongs_to :department
  has_many :teams
  belongs_to :quarter
  belongs_to :calendar
  belongs_to :section
  has_many :enrolments
  has_many(:students, { :through => :enrolments })
  has_many(:teams, {:through => :memberships})

end
