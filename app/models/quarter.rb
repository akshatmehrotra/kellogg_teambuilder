class Quarter < ActiveRecord::Base
  validates :term, presence: true
  validates :term, uniqueness: true
end
