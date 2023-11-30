class UserCourseController < ApplicationController
  before_action :authenticate_user!
  def register
    course = Course.find params[:id]
    current_user.courses << course if current_user.courses.where(id: course.id).first.blank?
    redirect_to course_url course.id
  end

  def unregister
    course = Course.find params[:id]
    current_user.courses.delete course.id unless current_user.courses.where(id: course.id).first.blank?
    redirect_to course_url course.id
  end
end
