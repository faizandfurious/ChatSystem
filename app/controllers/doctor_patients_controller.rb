class DoctorPatientsController < ApplicationController
  # GET /doctor_patients
  # GET /doctor_patients.json
  def index
    @doctor_patients = DoctorPatient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doctor_patients }
    end
  end

  # GET /doctor_patients/1
  # GET /doctor_patients/1.json
  def show
    @doctor_patient = DoctorPatient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doctor_patient }
    end
  end

  # GET /doctor_patients/new
  # GET /doctor_patients/new.json
  def new
    @doctor_patient = DoctorPatient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doctor_patient }
    end
  end

  # GET /doctor_patients/1/edit
  def edit
    @doctor_patient = DoctorPatient.find(params[:id])
  end

  # POST /doctor_patients
  # POST /doctor_patients.json
  def create
    @doctor_patient = DoctorPatient.new(params[:doctor_patient])

    respond_to do |format|
      if @doctor_patient.save
        format.html { redirect_to @doctor_patient, notice: 'Doctor patient was successfully created.' }
        format.json { render json: @doctor_patient, status: :created, location: @doctor_patient }
      else
        format.html { render action: "new" }
        format.json { render json: @doctor_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doctor_patients/1
  # PUT /doctor_patients/1.json
  def update
    @doctor_patient = DoctorPatient.find(params[:id])

    respond_to do |format|
      if @doctor_patient.update_attributes(params[:doctor_patient])
        format.html { redirect_to @doctor_patient, notice: 'Doctor patient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doctor_patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_patients/1
  # DELETE /doctor_patients/1.json
  def destroy
    @doctor_patient = DoctorPatient.find(params[:id])
    @doctor_patient.destroy

    respond_to do |format|
      format.html { redirect_to doctor_patients_url }
      format.json { head :no_content }
    end
  end
end
