class StudentsController < ApplicationController

  before_filter :authenticate_user!, except: [:index, :show]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @student = User.find params[:id]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @student }
    end
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
