class DashboardController < ApplicationController

  def new

  end

  def create
    if request.post?
      t = Teacher.find_by_email(params[:email])
      if t && t.authenticate(params[:password])
        session[:login] = true
        # session[:teacher_id] = t.id
        redirect_to teachers_path, notice: "You have successfully logged in."
      else
        redirect_to dashboard_index_path, notice: "E-mail or password incorrect. Please try again." if session[:login]
      end
    end
  end

  def destroy
    session[:login] = false
    redirect_to root_path, notice: "You have been successfully logged out."
  end

  private

    def set_params
      params.require(:dashboard).permit(:name, :email, :password_digest)
    end
end
