namespace :admin do
	desc "Populate db with states"
	task popstates: :environment do
		Maps::Application::STATES.each do |state|
			State.create(name: state[1])
		end
	end
end