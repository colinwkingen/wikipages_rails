class Type < ActiveRecord::Base
  validates :category, :presence => true
end
