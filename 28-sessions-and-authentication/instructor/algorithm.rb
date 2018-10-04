submitted_email = params[:email]
submitted_password = params[:password]

u = User.find_by(email: submitted_email)

if u.authenticate(submitted_password)
  # Access Granted
else
  # Access Denied!
end


class User
  def authenticate(submitted_password)
    salt = self.password_digest[0..2]
    hashed_salted_password = self.password_digest[3..-1]

    if hash(submitted_password, salt) == hashed_salted_password
      return self
    else
      return false
    end
  end

private

  def hash(plaintext_password, salt)
    ...
    return hashed_password
  end
end
