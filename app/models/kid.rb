class Kid < ActiveRecord::Base
  belongs_to :parent
  validates :name, :presence => true, :length   => { :maximum => 20 }
  validates :date, :presence => true, :length   => { :minimum => 4 }
  validates :performance, :presence => true, :length   => { :maximum=> 200 } 
end
