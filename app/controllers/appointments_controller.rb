class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update]
  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
  end

  def edit
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to appointments_path
    else
      flash[:notice] = @appointment.errors.full_messages
    end
  end

  def update
    if @appointment.update(appointment_params)
      redirect_to appointment_path
    else
      flash[:notice] = @appointment.errors.full_messages
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :appointment_date, :status)
  end

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end
end
