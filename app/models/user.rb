class User < ActiveRecord::Base
	has_secure_password
	validates	:name,	presence: true,	length: { maximum: 30 }	
	# validates	:email,	format: { with: /\A[^@]+@[^@]+\z/  }, uniqueness: { case_sensitive: false }
	validates	:email,	format: { with: /\A[^@]+@[^@]+\z/  }
end
