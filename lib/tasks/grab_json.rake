require 'json'

namespace :admin do
	desc "Populate db with articles"
	task populate: :environment do
		file = open 'maps3.json'
		json_hash = JSON.parse(file.read)
		results = json_hash["results"]

		# all states
		all_states = State.all
		all_states.each do |state|
			#puts state.name
		end
		#puts all_states
		results.each do |result|
			new_article = Article.new
			new_article.title = result["title"]
			new_article.body = result["body"]
			new_article.location = result["location"]
			new_article.url = result["url"]
			new_article.date = result["date"]
			new_article.latitude = result["lat"]
			new_article.longitude = result["lng"]
			# setting state_id by testing name equality
			counter = 1
			all_states.each do |state|
				if state.name.eql?(new_article.location)
					#puts 'got here'
					#puts state.name.eql?(new_article.location)
					new_article.state_id = counter
				else
					#puts counter
					#puts state.name.eql?(new_article.location)
					counter = counter + 1
				end
			end

			new_article.save
		end
	end
end