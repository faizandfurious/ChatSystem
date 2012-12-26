require 'test_helper'

class PatientQuestionsControllerTest < ActionController::TestCase
  setup do
    @patient_question = patient_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_question" do
    assert_difference('PatientQuestion.count') do
      post :create, patient_question: { created_on: @patient_question.created_on, patient_id: @patient_question.patient_id, question_id: @patient_question.question_id, received_data: @patient_question.received_data }
    end

    assert_redirected_to patient_question_path(assigns(:patient_question))
  end

  test "should show patient_question" do
    get :show, id: @patient_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_question
    assert_response :success
  end

  test "should update patient_question" do
    put :update, id: @patient_question, patient_question: { created_on: @patient_question.created_on, patient_id: @patient_question.patient_id, question_id: @patient_question.question_id, received_data: @patient_question.received_data }
    assert_redirected_to patient_question_path(assigns(:patient_question))
  end

  test "should destroy patient_question" do
    assert_difference('PatientQuestion.count', -1) do
      delete :destroy, id: @patient_question
    end

    assert_redirected_to patient_questions_path
  end
end
