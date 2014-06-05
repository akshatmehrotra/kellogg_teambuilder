class Team < ActiveRecord::Base

  belongs_to :course

  has_many :memberships
  has_many :students, :through => :memberships
  validates :name, presence: true
  validates :course_id, presence: true
end
