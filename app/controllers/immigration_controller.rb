class ImmigrationController < ApplicationController
  def home
    @edu_levels = EduLevel.all
  end
end
