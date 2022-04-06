class DoctorsController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  def index
    @doctors = Doctor.order(created_at: :desc)
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def edit
  end

  def create
     @doctor = Doctor.new(doctor_params)
     if @doctor.save
      redirect_to doctors_path
    else
      flash[:alert] = "Fill required fields"
      render :new
    end
  end

  def update

    if @doctor.update(doctor_params)
      puts "Hi"
      redirect_to doctors_path
    else
      puts "Not updated!"
      render :edit
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :email, :cnic, :spec)
  end

  def find_user
    @doctor = Doctor.find(params[:id])
  end

end
