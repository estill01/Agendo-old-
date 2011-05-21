class Project < ActiveRecord::Base

  has_many :needs
  validates :name, :presence => true

end
