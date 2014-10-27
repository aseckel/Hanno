class Project < ActiveRecord::Base

  has_many :tasks, dependent: :destroy
  has_many :discussions, dependent: :destroy

  has_many :comments, through: :discussions
  
  scope :recent, -> { order("updated_at DESC") }


end
