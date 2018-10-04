class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by(email: params[:session][:email])

    if u && u.authenticate(params[:session][:password])
      # Put on the wristband
      session[:user_id] = u.id

      # flash: 'Access granted!'
      redirect_to root_url
    else
      # flash: 'Email or password invalid!'
      render :new
    end
  end

  def destroy
  end
end

# Magic hashes:
# params
# flash
# session
