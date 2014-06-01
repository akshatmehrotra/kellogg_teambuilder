class Calendar < ActiveRecord::Base
  validates :year, presence: true
  validates :year, uniqueness: true

end
