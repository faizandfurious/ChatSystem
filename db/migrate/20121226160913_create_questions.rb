class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :keyword

      t.timestamps
    end
  end
end
