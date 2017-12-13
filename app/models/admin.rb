class Admin < ActiveRecord::Base

  #Enums
  enum role: {:full_access => 0, :restricted_access => 1}

  #Scopes
  scope :with_full_access, -> { where(role: 0) }
  scope :with_restricted_access, -> { where(role: 1) }

  #def self.with_full_access
   #where(role: 'full_access')
  #end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
