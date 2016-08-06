class AssessmentsController < ApplicationController
  def new
    @assessment = Assessment.new
  end
end
