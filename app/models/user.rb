class User < ActiveRecord::Base

	def self.authenticate(email , password)
		@user = User.find_by_email(email)

		if @user && @user.password == password
			@user
		else
			nil
		end
	end
end
