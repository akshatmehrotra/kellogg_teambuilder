class CoursesController < ApplicationController

  def my_courses
    @courses = current_student.courses
  end

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new
    @course.name = params[:name]
    @course.instructor = params[:instructor]
    @course.calendar_id = params[:calendar_id]
    @course.quarter_id = params[:quarter_id]
    @course.department_id = params[:department_id]
    @course.team_size = params[:team_size]
    @course.section_id = params[:section_id]

    if @course.save
      redirect_to "/courses", :notice => "Course created successfully."
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    @course.name = params[:name]
    @course.instructor = params[:instructor]
    @course.calendar_id = params[:calendar_id]
    @course.quarter_id = params[:quarter_id]
    @course.department_id = params[:department_id]
    @course.team_size = params[:team_size]
    @course.section_id = params[:section_id]

    if @course.save
      redirect_to "/courses", :notice => "Course updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])

    @course.destroy

    redirect_to "/courses", :notice => "Course deleted."
  end
end
