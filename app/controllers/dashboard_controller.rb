class DashboardController < ApplicationController

  def index

  end

  def create
    if request.post?
      u = Teacher.find_by_email(params[:email])
      if u.authenticate(params[:password])
        session[:login] = true
        redirect_to new_teacher_path, notice: "you done it!"
      else
        redirect_to root_path, notice: "get outta here!"
      end
    end
  end

  def destroy
    session[:login] = false
    redirect_to root_path
  end
end
