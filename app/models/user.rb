class User < ApplicationRecord

  # 2 types of users:
  has_many :attends_event, foreign_key: 'participant_id', class_name: 'User'
  has_many :organizes_event, foreign_key: 'admin_id', class_name: 'User' 

  #Participant
  has_many :attendances

  #Admin
  has_many :events

end
