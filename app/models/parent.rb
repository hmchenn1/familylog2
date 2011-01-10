 class Parent < ActiveRecord::Base
   #modified from
   #reference: http://railstutorial.org/ruby-on-rails-tutorial-book
     #attr_accessible :name, :email
     email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
     validates :name,  :presence => true,
                       :length   => { :maximum => 100 }
     validates :email, :presence => true,
                       #:uniqueness => true,
                      #:format   => { :with => email_regex }
                      :length   => { :minimum => 6 }
     has_many :kids
 end
 