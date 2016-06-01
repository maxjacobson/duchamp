class Report < ActiveRecord::Base
  # TODO: introduce some concept of parameters (probably not here)
  validates :name, presence: true
  validates :query, presence: true
end
