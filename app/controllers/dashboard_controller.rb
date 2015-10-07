class DashboardController < ApplicationController
  
  def index

  end

  def create
    if request.post?

      t = Teacher.find_by_email(params[:email])
      if t && t.authenticate(params[:password])
        session[:login] = true
        # session[:teacher_id] = t.id
        redirect_to new_teacher_path, notice: "You did it!"
      else
        redirect_to dashboard_index_path, notice: "Go jump off a short ledge." if session[:login]
      end
    end
  end

  def destroy

  end

  private

    def set_params
      params.require(:dashboard).permit(:name, :email, :password)
    end
end
