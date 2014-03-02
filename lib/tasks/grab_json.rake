require 'json'

namespace :admin do
	desc "Populate db with articles"
	task populate: :environment do
		file = open 'california.json'
		json_hash = JSON.parse(file.read)
		results = json_hash["results"]
		state_nm = json_hash["tokens"].first

		# all states
		all_states = State.all
		results.each do |result|
			new_article = Article.new
			new_article.body = result["body"]
			new_article.byline = result["byline"]
			new_article.date = result["date"]
			new_article.title = result["title"]
			new_article.url = result["url"]
			new_article.state_name = state_nm

			# setting state_id by testing name equality
			all_states.each do |state|
				counter = 1
				if state.name.eql?(state_nm)
					new_article.state_id = counter
				else
					counter += 1
				end
			end

			new_article.save
		end
	end
end