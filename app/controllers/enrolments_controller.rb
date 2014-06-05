class EnrolmentsController < ApplicationController
  def index
    @enrolments = Enrolment.all
  end

  def show
    @enrolment = Enrolment.find(params[:id])
  end

  def new
    @enrolment = Enrolment.new
  end

  def create
    @enrolment = Enrolment.new
    @enrolment.student_id = params[:student_id]
    @enrolment.course_id = params[:course_id]
    #original code
    # if @enrolment.save
    #   redirect_to "/courses/#{@enrolment.course_id}", :notice => "Enrolment created successfully."
    # else
    #   render 'new'
    # end
    #test code
    course_in_question = Course.find(@enrolment.course_id)
    student_in_question = Student.find(@enrolment.student_id)

    if student_in_question.courses.include?(course_in_question)
      redirect_to '/my_courses', :notice => "You are already enrolled in this class"
    else
      if @enrolment.save
        redirect_to "/my_courses", :notice => "You were successfully enrolled successfully."
      else
        # redirect_to "/teams"
        render 'new'
      end
    end





  end

  def edit
    @enrolment = Enrolment.find(params[:id])
  end

  def update
    @enrolment = Enrolment.find(params[:id])

    @enrolment.student_id = params[:student_id]
    @enrolment.course_id = params[:course_id]

    if @enrolment.save
      redirect_to "/enrolments", :notice => "Enrolment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @enrolment = Enrolment.find(params[:id])

    @enrolment.destroy

    redirect_to "/enrolments", :notice => "Enrolment deleted."
  end
end
