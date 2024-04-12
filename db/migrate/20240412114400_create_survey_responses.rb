class CreateSurveyResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :survey_responses do |t|
      t.string :answer1
      t.string :answer2
      t.string :answer3

      t.timestamps
    end
  end
end
