class Report < ActiveRecord::Base
  validates :name, presence: true
  validates :query, presence: true
end
