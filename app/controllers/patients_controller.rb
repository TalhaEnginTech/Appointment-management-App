class PatientsController < ApplicationController
  before_action :find_patient, only: [ :edit, :update, :destroy]
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to patients_path
    else
      flash[:alert] = "Fill required fields"
      render :new
    end
  end

  def update

    if @patient.update(patient_params)
      puts "Hi"
      redirect_to patients_path
    else
      puts "Not updated!"
      render :edit
    end
  end

  def destroy
    @patient.destroy
    redirect_to patients_path
  end

  private

  def patient_params
    params.permit(:name, :email, :cnic, :blood_group)
  end

  def find_patient
    @patient = Patient.find(params[:id])
  end

end
