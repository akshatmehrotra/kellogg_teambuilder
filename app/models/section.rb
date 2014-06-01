class Section < ActiveRecord::Base
  validates :number, presence: true
  validates :number, uniqueness: true
end
