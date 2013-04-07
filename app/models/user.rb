class User < ActiveRecord::Base

  validates :first_name, :last_name, :birthday, :shoe_size, :presence => true
  validates :email_address, :format => {:with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/}, :uniqueness => true, :presence => true

  attr_accessible :first_name, :last_name, :email_address, :birthday, :shoe_size

end