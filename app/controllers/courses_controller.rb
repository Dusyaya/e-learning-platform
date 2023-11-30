class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ show_my new edit create update destroy ]

  def show_my
    @courses = current_user.courses
  end

  # GET /courses or /courses.json
  def index
    @courses = Course.all
    unless params[:search].blank?
      @courses = @courses.where name: params[:search][:name] unless params[:search][:name].blank?
      @courses = @courses.where name: params[:search][:description] unless params[:search][:description].blank?
      @courses = @courses.where name: params[:search][:price] unless params[:search][:price].blank?
      @courses = @courses.where name: params[:search][:author] unless params[:search][:author].blank?
    end
  end

  # GET /courses/1 or /courses/1.json
  def show
    if user_signed_in?
      @user_subscribe_course = !current_user.courses.where(id: params[:id]).first.blank?
    else
      @user_subscribe_course = false
    end
  end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses or /courses.json
  def create
    @course = Course.new(course_params)

    respond_to do |format|
      if @course.save
        format.html { redirect_to course_url(@course), notice: "Course was successfully created." }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1 or /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to course_url(@course), notice: "Course was successfully updated." }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course.destroy!

    respond_to do |format|
      format.html { redirect_to courses_url, notice: "Course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_course
    @course = Course.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def course_params
    params.require(:course).permit(:name, :description, :price, :author, :rate, :duration, :language)
  end
end
