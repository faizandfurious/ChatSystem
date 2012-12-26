class PatientQuestionsController < ApplicationController
  # GET /patient_questions
  # GET /patient_questions.json
  def index
    @patient_questions = PatientQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patient_questions }
    end
  end

  # GET /patient_questions/1
  # GET /patient_questions/1.json
  def show
    @patient_question = PatientQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_question }
    end
  end

  # GET /patient_questions/new
  # GET /patient_questions/new.json
  def new
    @patient_question = PatientQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient_question }
    end
  end

  # GET /patient_questions/1/edit
  def edit
    @patient_question = PatientQuestion.find(params[:id])
  end

  # POST /patient_questions
  # POST /patient_questions.json
  def create
    @patient_question = PatientQuestion.new(params[:patient_question])

    respond_to do |format|
      if @patient_question.save
        format.html { redirect_to @patient_question, notice: 'Patient question was successfully created.' }
        format.json { render json: @patient_question, status: :created, location: @patient_question }
      else
        format.html { render action: "new" }
        format.json { render json: @patient_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patient_questions/1
  # PUT /patient_questions/1.json
  def update
    @patient_question = PatientQuestion.find(params[:id])

    respond_to do |format|
      if @patient_question.update_attributes(params[:patient_question])
        format.html { redirect_to @patient_question, notice: 'Patient question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_questions/1
  # DELETE /patient_questions/1.json
  def destroy
    @patient_question = PatientQuestion.find(params[:id])
    @patient_question.destroy

    respond_to do |format|
      format.html { redirect_to patient_questions_url }
      format.json { head :no_content }
    end
  end
end
