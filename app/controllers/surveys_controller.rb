class SurveysController < ApplicationController
  def index
    @data_for_question1 = SurveyResponse.group(:answer1).count
    @data_for_question2 = SurveyResponse.group(:answer2).count
    @data_for_question3 = SurveyResponse.group(:answer3).count

    @data_for_chart = SurveyResponse.group_by_day(:created_at).count

  

    # Debug output to the console
    Rails.logger.debug "Data for Question 1: #{@data_for_question1}"
    Rails.logger.debug "Data for Question 2: #{@data_for_question2}"
    Rails.logger.debug "Data for Question 3: #{@data_for_question3}"
  end
end