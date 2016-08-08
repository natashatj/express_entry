class LanguageDataController < ApplicationController

	def new
		@language_data = LangTestDatum.new
	end

end
