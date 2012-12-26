class CreatePatientQuestions < ActiveRecord::Migration
  def change
    create_table :patient_questions do |t|
      t.integer :patient_id
      t.integer :question_id
      t.datetime :created_on
      t.boolean :received_data

      t.timestamps
    end
  end
end
