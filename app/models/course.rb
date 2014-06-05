class Course < ActiveRecord::Base
  validates :name, presence: true
  validates :team_size, presence: true

  belongs_to :department
  has_many :teams, :dependent => :destroy
  belongs_to :quarter
  belongs_to :calendar
  belongs_to :section
  has_many :enrolments, :dependent => :destroy
  has_many(:students, { :through => :enrolments })
  # has_many(:teams, {:through => :students})

  def full_title
    return "#{quarter.term.capitalize} #{calendar.year.to_s} #{department.name} #{name}-#{section.number.to_s}"
  end


end
