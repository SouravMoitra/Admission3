class UserPagesController < ApplicationController
  before_action :user_signin_status, only: [:home]

  def home
    @user = current_user
    @streams = Stream.all
  end

  def help
  end

  def contact
  end

  def about
  end

  def new_personal
    @personal = Personal.new
  end

  def create_personal
    @user = current_user
     @personal = @user.build_personal(personal_params)
     if @personal.save
       flash[:notice] = "Successfully created your personal infromation"
       redirect_to home_path
     else
       render 'new_personal'
     end
  end

  def new_academic
    stream_id = params[:stream_id].to_i || nil if params[:stream_id]
    begin
      @user = current_user
      @stream = Stream.find(stream_id)
      @academic = @user.build_academic
      @stream.subjects.each do |sub|
        @academic.subject_details.build
      end
      2.times do
        @academic.additional_subjects.build
      end
    rescue ActiveRecord::RecordNotFound
      flash[:danger] = "Stream not found"
      redirect_to home_path
    end
  end

  def create_academic
    @user = current_user
    @academic = @user.build_academic(academic_params)
     # demo calculations of final_marks needs to be replaced
     # needs to be refactored
     # Calculating marks for rank calculation
     # present in application_helper.rb
     calculated_marks = calculate_marks(@academic)
     @academic.update(calculated_marks: calculated_marks)
     if @academic.save
       flash[:success] = "Successfully created your academic infromation"
       redirect_to home_path
     else
       render 'new_academic'
     end
  end

  private

  def user_signin_status
    unless user_signed_in?
      flash[:danger] = "you need to register yourself or sign in"
      redirect_to sign_in_path
    end
  end

    def personal_params
      params.require(:personal).permit(:user_id, :category, :photo, :date_of_birth, :gender, :blood_group, :fathers_name, :mothers_name, :address_present, :first_name, :last_name, :middle_name)
    end

    def academic_params
      params.require(:academic).permit(:user_id, :tenth_roll, :tenth_year_pass, :tenth_marks_percent, :tenth_board, :hs_roll,
                                            :hs_year_pass, :hs_marks_percent, :hs_board, :stream_id,
                                            subject_details_attributes: [:id, :subject_id, :marks],
                                            additional_subjects_attributes: [:id, :subject, :subject_marks])
    end

end
