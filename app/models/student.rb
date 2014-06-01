class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :program

  has_many :memberships
  has_many(:teams, { :through => :memberships })


  has_many :enrolments
  has_many(:courses, { :through => :enrolments })

end
