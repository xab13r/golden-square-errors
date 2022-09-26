require 'password_checker'

RSpec.describe PasswordChecker do
	context "When password is not long enough" do
		it "fails" do
			password_checker = PasswordChecker.new
			expect { password_checker.check("test") }.to raise_error "Invalid password, must be 8+ characters"
		end
	end
end