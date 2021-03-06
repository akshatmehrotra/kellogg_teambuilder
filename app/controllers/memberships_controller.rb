class MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
  end

  def show
    @membership = Membership.find(params[:id])
  end

  def new
    if params[:course_id].present?
      @teams = Course.find(params[:course_id]).teams
    else
      @teams = Team.all
    end

    @membership = Membership.new

  end

  def create
    @membership = Membership.new
    @membership.student_id = params[:student_id]
    @membership.team_id = params[:team_id]


    student_in_question = Student.find(@membership.student_id)
    team_in_question = Team.find(@membership.team_id)
    course_in_question = team_in_question.course




    if student_in_question.courses.include?(course_in_question)
      if student_in_question.teams.where(:course_id=>course_in_question.id).present?
        redirect_to '/my_teams', :notice => "You are already a member of a team for this course."
      else
        if team_in_question.students.count < team_in_question.course.team_size
          if @membership.save
            redirect_to '/my_teams', :notice => "Membership created successfully."
          else
            render 'new'
          end
        else
          redirect_to '/my_teams', :notice => "Team already full."
        end
      end
    else
      redirect_to '/my_courses', :notice => "You are not enroled in this course"
    end
  end

  def edit
    @membership = Membership.find(params[:id])
  end

  def update
    @membership = Membership.find(params[:id])

    @membership.student_id = params[:student_id]
    @membership.team_id = params[:team_id]

    if @membership.save
      redirect_to "/memberships", :notice => "Membership updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @membership = Membership.find(params[:id])

    @membership.destroy

    redirect_to "/memberships", :notice => "Membership deleted."
  end
end
