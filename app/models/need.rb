class Need < ActiveRecord::Base

  belongs_to :project
  scope :completed, where(:completed => true)
  scope :incompleted, where(:completed => false)
  
end
