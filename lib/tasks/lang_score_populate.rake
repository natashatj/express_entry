
namespace :lang_score_populate do

	desc "Populate db with score tiers for language"
	task populate_tiers: :environment do
		#CREATE LANGUAGE TESTS
		
		LanguageTest.create language: "French", test_evaluation: "Informal"
		LanguageTest.create language: "English", test_evaluation: "CELPIP"
		LanguageTest.create language: "French", test_evaluation: "TEFL"
		LanguageTest.create language: "English", test_evaluation: "IELTS"
		LanguageTest.create language: "English", test_evaluation: "Informal"

		#INFORMAL FRENCH
		LangScoreTier.create language_test_id: 1, name_score: "Beginner", clb: "4 or 5"

		LangScoreTier.create language_test_id: 1, name_score: "Intermediate", clb: "6 or 7"

		LangScoreTier.create language_test_id: 1, name_score: "Advance", clb: "8 to 10"

		#TEF FRENCH
		#reading(on or after April 1st)
		LangScoreTier.create language_test_id: 2, name_score: "121-150", clb: "4", skill: "reading"

		LangScoreTier.create language_test_id: 2, name_score: "151-180", clb: "5", skill: "reading"

		LangScoreTier.create language_test_id: 2, name_score: "181-206", clb: "6", skill: "reading"
		LangScoreTier.create language_test_id: 2, name_score: "207-232", clb: "7", skill: "reading"

		LangScoreTier.create language_test_id: 2, name_score: "233-247", clb: "8", skill: "reading"

		LangScoreTier.create language_test_id: 2, name_score: "248-262", clb: "9", skill: "reading"

		LangScoreTier.create language_test_id: 2, name_score: "263-277", clb: "10", skill: "reading"

		#writing
		LangScoreTier.create language_test_id: 2, name_score: "181-225", clb: "4", skill: "writing"

		LangScoreTier.create language_test_id: 2, name_score: "226-270", clb: "5", skill: "writing"

		LangScoreTier.create language_test_id: 2, name_score: "271-309", clb: "6", skill: "writing"

		LangScoreTier.create language_test_id: 2, name_score: "310-348", clb: "7", skill: "writing"

		LangScoreTier.create language_test_id: 2, name_score: "349-370", clb: "8", skill: "writing"

		LangScoreTier.create language_test_id: 2, name_score: "371-392", clb: "9", skill: "writing"

		LangScoreTier.create language_test_id: 2, name_score: "393-415", clb: "10", skill: "writing"
		
		#Listening
		LangScoreTier.create language_test_id: 2, name_score: "145-180", clb: "4", skill: "listening"

		LangScoreTier.create language_test_id: 2, name_score: "181-216", clb: "5", skill: "listening"

		LangScoreTier.create language_test_id: 2, name_score: "217-248", clb: "6", skill: "listening"

		LangScoreTier.create language_test_id: 2, name_score: "249-279", clb: "7", skill: "listening"

		LangScoreTier.create language_test_id: 2, name_score: "280-297", clb: "8", skill: "listening"

		LangScoreTier.create language_test_id: 2, name_score: "298-315", clb: "9", skill: "listening"

		LangScoreTier.create language_test_id: 2, name_score: "316-333", clb: "10", skill: "listening"

		#Speaking
		LangScoreTier.create language_test_id: 2, name_score: "181-225", clb: "4", skill: "speaking"

		LangScoreTier.create language_test_id: 2, name_score: "226-270", clb: "5", skill: "speaking"

		LangScoreTier.create language_test_id: 2, name_score: "271-309", clb: "6", skill: "speaking"

		LangScoreTier.create language_test_id: 2, name_score: "310-348", clb: "7", skill: "speaking"

		LangScoreTier.create language_test_id: 2, name_score: "349-370", clb: "8", skill: "speaking"

		LangScoreTier.create language_test_id: 2, name_score: "371-392", clb: "9", skill: "speaking"

		LangScoreTier.create language_test_id: 2, name_score: "393-415", clb: "10", skill: "speaking"

		#ENGLISH CELPIP
		#Reading/Writing/Speaking/Listening
		LangScoreTier.create language_test_id: 3, name_score: "4", clb: "4"

		LangScoreTier.create language_test_id: 3, name_score: "5", clb: "5"

		LangScoreTier.create language_test_id: 3, name_score: "6", clb: "6"

		LangScoreTier.create language_test_id: 3, name_score: "7", clb: "7"

		LangScoreTier.create language_test_id: 3, name_score: "8", clb: "8"

		LangScoreTier.create language_test_id: 3, name_score: "9", clb: "9"

		LangScoreTier.create language_test_id: 3, name_score: "10", clb: "10"

		#IELTS ENGLISH
		#reading
		LangScoreTier.create language_test_id: 4, name_score: "3.5", clb: "4", skill: "reading"

		LangScoreTier.create language_test_id: 4, name_score: "4", clb: "5", skill: "reading"

		LangScoreTier.create language_test_id: 4, name_score: "5", clb: "6", skill: "reading"

		LangScoreTier.create language_test_id: 4, name_score: "6", clb: "7", skill: "reading"

		LangScoreTier.create language_test_id: 4, name_score: "6.5", clb: "8", skill: "reading"

		LangScoreTier.create language_test_id: 4, name_score: "7", clb: "9", skill: "reading"

		LangScoreTier.create language_test_id: 4, name_score: "8", clb: "10", skill: "reading"

		#writing
		LangScoreTier.create language_test_id: 4, name_score: "4.0", clb: "4", skill: "writing"

		LangScoreTier.create language_test_id: 4, name_score: "5.0", clb: "5", skill: "writing"

		LangScoreTier.create language_test_id: 4, name_score: "5.5", clb: "6", skill: "writing"

		LangScoreTier.create language_test_id: 4, name_score: "6.0", clb: "7", skill: "writing"

		LangScoreTier.create language_test_id: 4, name_score: "6.5", clb: "8", skill: "writing"

		LangScoreTier.create language_test_id: 4, name_score: "7", clb: "9", skill: "writing"

		LangScoreTier.create language_test_id: 4, name_score: "7.5", clb: "10", skill: "writing"

		#listening
		LangScoreTier.create language_test_id: 4, name_score: "4.5", clb: "4", skill: "listening"

		LangScoreTier.create language_test_id: 4, name_score: "5.0", clb: "5", skill: "listening"

		LangScoreTier.create language_test_id: 4, name_score: "5.5", clb: "6", skill: "listening"

		LangScoreTier.create language_test_id: 4, name_score: "6.0", clb: "7", skill: "listening"

		LangScoreTier.create language_test_id: 4, name_score: "7.5", clb: "8", skill: "listening"

		LangScoreTier.create language_test_id: 4, name_score: "8", clb: "9", skill: "listening"

		LangScoreTier.create language_test_id: 4, name_score: "8.5", clb: "10", skill: "listening"
		#put other instances in console
		#speaking
		LangScoreTier.create language_test_id: 4, name_score: "4.0", clb: "4", skill: "speaking"

		LangScoreTier.create language_test_id: 4, name_score: "5.0", clb: "5", skill: "speaking"

		LangScoreTier.create language_test_id: 4, name_score: "5.5", clb: "6", skill: "speaking"

		LangScoreTier.create language_test_id: 4, name_score: "6.0", clb: "7", skill: "speaking"

		LangScoreTier.create language_test_id: 4, name_score: "6.5", clb: "8", skill: "speaking"

		LangScoreTier.create language_test_id: 4, name_score: "7", clb: "9", skill: "speaking"

		LangScoreTier.create language_test_id: 4, name_score: "7.5", clb: "10", skill: "speaking"

		#ENGLISH INFORMAL
		LangScoreTier.create language_test_id: 5, name_score: "Beginner", clb: "4 or 5"

		LangScoreTier.create language_test_id: 5, name_score: "Intermediate", clb: "6 or 7"

		LangScoreTier.create language_test_id: 5, name_score: "Advanced", clb: "8 or 10"

	end
end
