class StaticPagesController < ApplicationController

	def home
		@states = State.all
		@articles = Article.all
	end

	def hidden
		@states = State.all
		@articles = Article.all
		#@article = Article.find(1)
		#@articles.each do |article|
			#render json: {
				#title: @article.title,
				#body: @	article.body
			#}
		#end
	end

	def team
	end

	def about
	end

	def maps
		@states = State.all
		@articles = Article.all
	end

end
